global path "C:\GitHub\EconAnalysis\Participation\" 
global results "${path}Results\"
global figures "${results}Figures\"
global tables "${results}Tables\"
global contrmap "${path}Contraction mapping\"
global logs "${results}Logs\"
global mwtp "${path}WTP estimation\"
cd $path


*    Preilimnary estimations (before contraction mapping)    *
**************************************************************

clear all
cap log close
	log using ${logs}preliminary, text replace

** Import data
import delimited "Stata\rdo_Stata_c4.csv"
gen id_obs = _n
gen const_r2 = 1


** Set choice model database
cmset fished_vessel_id time selection
// cmset fished_haul selection
sort id_obs

** Estimate conditional logits (with alternative-specific constant)

*** Only-constant model
qui cmclogit fished, base("No-Participation") 
scalar ll0 = e(ll)
estimates store base

*** Preferred model

* Variables that do not converge: dcpue dparticipate
* No relevant variables: waclosure waclosured

eststo P1: cmclogit fished mean_avail mean_price diesel_price wind_max_220_mh d_missing dist_port_to_catch_area_zero d_missing_d dist_to_cog ///
		ddieselstate psdnclosured msqdclosured msqdweekend, base("No-Participation")
estimates store P1
di "R2-McFadden = " 1 - (e(ll)/ll0)
estadd scalar r2 = 1 - (e(ll)/ll0): P1
lrtest P1 base, force
estadd scalar lr_p = r(p): P1
estat ic, all
matrix S = r(S)
estadd scalar aic = S[1,5]: P1
estadd scalar bic = S[1,6]: P1
estadd scalar aicc = S[1,7]: P1
estadd scalar caic = S[1,8]: P1
preserve
	qui predict phat
	by fished_haul, sort: egen max_prob = max(phat) 
	drop if max_prob != phat
	by fished_haul, sort: gen nvals = _n == 1 
	count if nvals
	dis _N
	gen selection_hat = 1
	egen count1 = total(fished)
	dis count1/_N*100 "%"
	estadd scalar perc1 = count1/_N*100: P1
restore

label variable mean_avail "Expected availability"
label variable mean_price "Expected price"
label variable diesel_price "Expected diesel price"
label variable wind_max_220_mh "Maximum wind (< 220km)"
label variable dummy_last_day "Choice has chosen last day"
label variable d_missing "Binary: Missing availability"
label variable d_missing_p "Binary: Missing price"
label variable dist_port_to_catch_area "Distance to catch area"
label variable dist_port_to_catch_area_zero "Distance to catch area"
label variable d_missing_d "Binary: Missing distance"
label variable lat_cg "Latitudinal Center of Gravity"
label variable unem_rate "State unemployment rate"
label variable dist_to_cog "Distance to Center of Gravity" 



***********************************************************
*** Include state dependency (models to present on paper)

eststo B1: cmclogit fished mean_avail mean_price diesel_price wind_max_220_mh d_missing dist_port_to_catch_area_zero d_missing_d dist_to_cog ///
		ddieselstate psdnclosured msqdclosured msqdweekend i.dummy_last_day, base("No-Participation")
di "R2-McFadden = " 1 - (e(ll)/ll0)
estadd scalar r2 = 1 - (e(ll)/ll0): B1
lrtest B1 P1, force
estadd scalar lr_p = r(p): B1
estat ic, all
matrix S = r(S)
estadd scalar aic = S[1,5]: B1
estadd scalar bic = S[1,6]: B1
estadd scalar aicc = S[1,7]: B1
estadd scalar caic = S[1,8]: B1
preserve
	qui predict phat
	by fished_haul, sort: egen max_prob = max(phat) 
	drop if max_prob != phat
	by fished_haul, sort: gen nvals = _n == 1 
	count if nvals
	dis _N
	gen selection_hat = 1
	egen count1 = total(fished)
	dis count1/_N*100 "%"
	estadd scalar perc1 = count1/_N*100: B1
restore


* OTHER STATE DEPENDENCY VARIABLES???

*** dummy_prev_days dummy_prev_year_days dummy_clust_prev_days

esttab P1 B1 using "${tables}preliminary_regressions_state_dep_2023_09_13.rtf", starlevels(* 0.10 ** 0.05 *** 0.01) ///
		label title("Table. Preliminary estimations.") /// 
		stats(N r2 perc1 lr_p aic bic aicc caic, fmt(0 3) ///
			labels("Observations" "McFadden R2" "Predicted choices (%)" "LR-test" "AIC" "BIC" "AICc" "CAIC" ))  ///
		replace nodepvars b(%9.3f) not nomtitle nobaselevels se  noconstant
  
** Try again dummy price and unemployment




