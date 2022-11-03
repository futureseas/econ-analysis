
Mixed logit choice model                       Number of obs      =    209,460
Case ID variable: _caseid                      Number of cases    =     41,892

Alternatives variable: selection               Alts per case: min =          5
                                                              avg =        5.0
                                                              max =          5
Integration sequence:            Hammersley
Integration points:                    1355       Wald chi2(2)    =     174.48
Log simulated-pseudolikelihood =   -12113.8       Prob > chi2     =     0.0000

                          (Std. err. adjusted for 43 clusters in fished_vessel_id)
----------------------------------------------------------------------------------
                 |               Robust
          fished | Coefficient  std. err.      z    P>|z|     [95% conf. interval]
-----------------+----------------------------------------------------------------
selection        |
      dummy_miss |  -2.921365   .2670023   -10.94   0.000     -3.44468    -2.39805
    mean_rev_adj |  -.0024839    .006934    -0.36   0.720    -.0160743    .0111064
-----------------+----------------------------------------------------------------
/Normal          |
 sd(mean_rev_adj)|    .005921   .0083047                      .0003789     .092527
-----------------+----------------------------------------------------------------
BDA_WBAS         |
           _cons |  -5.620108   1.048303    -5.36   0.000    -7.674744   -3.565472
-----------------+----------------------------------------------------------------
ERA_MSQD         |
           _cons |  -4.261998   .9191879    -4.64   0.000    -6.063573   -2.460423
-----------------+----------------------------------------------------------------
LAA_CHL1         |
           _cons |   -5.43589   .7021701    -7.74   0.000    -6.812118   -4.059661
-----------------+----------------------------------------------------------------
LAA_CMCK         |
           _cons |  -3.665662   .6827501    -5.37   0.000    -5.003827   -2.327496
-----------------+----------------------------------------------------------------
LAA_CUDA         |
           _cons |    26.0926   .9691913    26.92   0.000     24.19302    27.99218
-----------------+----------------------------------------------------------------
LAA_JMCK         |
           _cons |  -4.411217   .8381871    -5.26   0.000    -6.054034   -2.768401
-----------------+----------------------------------------------------------------
LAA_MAKO         |
           _cons |  -5.491546   .9515044    -5.77   0.000     -7.35646   -3.626631
-----------------+----------------------------------------------------------------
LAA_MSQD         |
           _cons |  -2.574776   .2083681   -12.36   0.000    -2.983169   -2.166382
-----------------+----------------------------------------------------------------
LAA_NANC         |
           _cons |  -5.268197   .7912389    -6.66   0.000    -6.818997   -3.717398
-----------------+----------------------------------------------------------------
LAA_PSDN         |
           _cons |  -5.225544   .4699269   -11.12   0.000    -6.146584   -4.304504
-----------------+----------------------------------------------------------------
LAA_SABL         |
           _cons |  -6.711944    1.03266    -6.50   0.000    -8.735919   -4.687968
-----------------+----------------------------------------------------------------
LAA_SMLT         |
           _cons |  -6.029501   .9506631    -6.34   0.000    -7.892766   -4.166236
-----------------+----------------------------------------------------------------
LAA_UHAG         |
           _cons |  -5.436024   .7183996    -7.57   0.000    -6.844061   -4.027986
-----------------+----------------------------------------------------------------
LAA_UMCK         |
           _cons |  -3.746473   .6716535    -5.58   0.000    -5.062889   -2.430056
-----------------+----------------------------------------------------------------
LAA_WBAS         |
           _cons |  -5.619692   .9838778    -5.71   0.000    -7.548057   -3.691326
-----------------+----------------------------------------------------------------
LAA_YLTL         |
           _cons |  -4.480737   .5376671    -8.33   0.000    -5.534546   -3.426929
-----------------+----------------------------------------------------------------
MNA_ALBC         |
           _cons |   26.00628   1.083849    23.99   0.000     23.88198    28.13059
-----------------+----------------------------------------------------------------
MNA_MSQD         |
           _cons |  -3.815754   .7123311    -5.36   0.000    -5.211897   -2.419611
-----------------+----------------------------------------------------------------
MNA_NANC         |
           _cons |   21.68247   1.032829    20.99   0.000     19.65816    23.70678
-----------------+----------------------------------------------------------------
MNA_PSDN         |
           _cons |   26.25627   1.032294    25.43   0.000     24.23301    28.27953
-----------------+----------------------------------------------------------------
MRA_MSQD         |
           _cons |   26.55313   1.086739    24.43   0.000     24.42316     28.6831
-----------------+----------------------------------------------------------------
NPS_CHUM         |
           _cons |   20.40084   1.044693    19.53   0.000     18.35328     22.4484
-----------------+----------------------------------------------------------------
No_Participation |  (base alternative)
-----------------+----------------------------------------------------------------
SBA_CMCK         |
           _cons |   22.00385   1.089517    20.20   0.000     19.86843    24.13926
-----------------+----------------------------------------------------------------
SBA_MSQD         |
           _cons |  -3.618539   .4826465    -7.50   0.000    -4.564508   -2.672569
-----------------+----------------------------------------------------------------
SBA_NANC         |
           _cons |  -4.512452   1.010173    -4.47   0.000    -6.492356   -2.532549
-----------------+----------------------------------------------------------------
SBA_PSDN         |
           _cons |  -4.941999   .7520191    -6.57   0.000     -6.41593   -3.468069
-----------------+----------------------------------------------------------------
SBA_WBAS         |
           _cons |  -6.177489   1.026126    -6.02   0.000     -8.18866   -4.166319
-----------------+----------------------------------------------------------------
SBA_YLTL         |
           _cons |   26.55829   1.080792    24.57   0.000     24.43997     28.6766
-----------------+----------------------------------------------------------------
SBA_YTNA         |
           _cons |   22.17705   1.088776    20.37   0.000     20.04309    24.31102
-----------------+----------------------------------------------------------------
SDA_CHL1         |
           _cons |   -5.68089   1.020612    -5.57   0.000    -7.681254   -3.680527
-----------------+----------------------------------------------------------------
SDA_MSQD         |
           _cons |  -5.842293   1.024271    -5.70   0.000    -7.849827   -3.834759
-----------------+----------------------------------------------------------------
SDA_UHAG         |
           _cons |  -5.525706   .9724576    -5.68   0.000    -7.431688   -3.619724
-----------------+----------------------------------------------------------------
SFA_MSQD         |
           _cons |   -5.01305   1.015317    -4.94   0.000    -7.003035   -3.023065
-----------------+----------------------------------------------------------------
SPS_CHUM         |
           _cons |  -4.085515   .9941998    -4.11   0.000    -6.034111   -2.136919
----------------------------------------------------------------------------------
