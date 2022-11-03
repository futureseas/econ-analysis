****************************
**** Paticipation model ****
****************************

clear all
cd "C:\GitHub\EconAnalysis"
** Import data
import delimited "C:\GitHub\EconAnalysis\Data\sampled_mixed_logit_data.csv"


** Set mixed logit database
cmset fished_vessel_id time selection


*** Run mixed-logit
cmmixlogit fished dummy_miss, random(mean_rev_adj) 
estimates save mixed_logit_results // save model
estimates use mixed_logit_results // load results