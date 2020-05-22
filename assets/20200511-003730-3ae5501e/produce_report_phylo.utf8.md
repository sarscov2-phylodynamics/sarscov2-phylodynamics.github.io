---
urlcolor: blue
linkcolor: blue
output:
  word_document:
    fig_width: 7
    fig_height: 5
    fig_caption: true
    highlight: "tango"
    reference_docx: word_style.docx
    df_print: "kable"
  html_document:
    fig_width: 7
    fig_height: 5
    fig_caption: true
    highlight: "tango"
---








---
title: "Phylodynamic Analysis: St.Petersburg,: 2020-04-15 "
date: May 11, 2020
---





### Primary author: Olivia Boyd

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-05-11





## Background information  




#### This is analysis is based on : 
  
* **30 whole genomes** sampled from **within St.Petersburg**
* **45 whole genomes** sampled from outside of **St.Petersburg**
* Samples within St.Petersburg were collected between **2020-03-15** and **2020-04-15**



<img src="sample_distribution.png" width="1050" />

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in St.Petersburg?





<img src="SEIJR_plot_size.png" width="1050" />


<img src="SEIJR_plot_size_log.png" width="1050" />


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in St.Petersburg. The dashed line indicates the date of last sample in St.Petersburg in this analysis.*


* Estimated cumulative infections at last sample (2020-04-15): **615344 [24064-6034569]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-15: **929**  

<!-- * Cumulative number of active infections at 2020-04-15:   -->



<img src="Daily.png" width="1050" />


<img src="Daily_log.png" width="1050" />


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in St.Petersburg. The dashed line indicates the date of last sample in St.Petersburg in this analysis.*


<img src="reporting.png" width="1050" />

*Figure 4: Estimated percentage of daily cases reported in St.Petersburg. Error bars represent the 95% credible interval.*



<img src="Rt.png" width="1050" />

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in St.Petersburg in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in St.Petersburg, respectively. *

Reproduction number at last sample (2020-04-15): **2.54 [0.0721-3.38]** median [95% CrI]


## How quickly has the epidemic in St.Petersburg grown?



<table class="table" style="width: auto !important; ">
<caption>Table 1: Reproduction number, growth rate and doubling times</caption>
 <thead>
  <tr>
   <th style="text-align:center;"> Quantile </th>
   <th style="text-align:center;"> Reproduction number </th>
   <th style="text-align:center;"> Growth rate (per day) </th>
   <th style="text-align:center;"> Doubling time (days) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> 50% </td>
   <td style="text-align:center;"> 3.78 </td>
   <td style="text-align:center;"> 0.240 </td>
   <td style="text-align:center;"> 2.89 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 2.5% </td>
   <td style="text-align:center;"> 2.60 </td>
   <td style="text-align:center;"> 0.155 </td>
   <td style="text-align:center;"> 2.08 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 97.5% </td>
   <td style="text-align:center;"> 5.34 </td>
   <td style="text-align:center;"> 0.334 </td>
   <td style="text-align:center;"> 4.48 </td>
  </tr>
</tbody>
</table>






## How has SARS-CoV 2 evolved in St.Petersburg?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



<img src="mcc.png" width="600" />

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within St.Petersburg, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000592 [0.000506-0.000747]** median [95% CrI]  

<!-- #### (optional) Number of introductions into St.Petersburg (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



<img src="cumu_inf_exp_model.png" width="1050" />

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in St.Petersburg in this analysis. The points represent reported cases in St.Petersburg.*

Based on an estimated growth rate of 0.240 [0.155 - 0.334] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-15) as: 1154935 [25592 - 103859578]

We estimate number of infections at 2020-05-10 (25 days after last sample) as:
452217605 [1527384 - NA]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).




<table class="table" style="width: auto !important; ">
<caption>Effective sample size of model parameters</caption>
 <thead>
  <tr>
   <th style="text-align:center;"> Statistic </th>
   <th style="text-align:center;"> mean </th>
   <th style="text-align:center;"> ESS </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> posterior </td>
   <td style="text-align:center;"> -41790.4015789 </td>
   <td style="text-align:center;"> 29 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> likelihood </td>
   <td style="text-align:center;"> -41739.4418157 </td>
   <td style="text-align:center;"> 15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> prior </td>
   <td style="text-align:center;"> -50.9597633 </td>
   <td style="text-align:center;"> 33 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> treeLikelihood.algn </td>
   <td style="text-align:center;"> -41739.4418157 </td>
   <td style="text-align:center;"> 15 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> TreeHeight </td>
   <td style="text-align:center;"> 0.4474912 </td>
   <td style="text-align:center;"> 24 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> clockRate </td>
   <td style="text-align:center;"> 0.0006005 </td>
   <td style="text-align:center;"> 117 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> kappa </td>
   <td style="text-align:center;"> 5.6553146 </td>
   <td style="text-align:center;"> 8924 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> PhydynSEIR </td>
   <td style="text-align:center;"> -13.7939235 </td>
   <td style="text-align:center;"> 32 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.E </td>
   <td style="text-align:center;"> 26.9867657 </td>
   <td style="text-align:center;"> 14 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.S </td>
   <td style="text-align:center;"> 4808292.8662105 </td>
   <td style="text-align:center;"> 20 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.b </td>
   <td style="text-align:center;"> 27.8514308 </td>
   <td style="text-align:center;"> 44 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exog </td>
   <td style="text-align:center;"> 0.1166401 </td>
   <td style="text-align:center;"> 93 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exogGrowthRate </td>
   <td style="text-align:center;"> 24.2961363 </td>
   <td style="text-align:center;"> 59 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.importRate </td>
   <td style="text-align:center;"> 7.8504439 </td>
   <td style="text-align:center;"> 64 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.p_h </td>
   <td style="text-align:center;"> 0.2202860 </td>
   <td style="text-align:center;"> 52 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.tau </td>
   <td style="text-align:center;"> 75.5091262 </td>
   <td style="text-align:center;"> 420 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.1 </td>
   <td style="text-align:center;"> 0.2987648 </td>
   <td style="text-align:center;"> 3640 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.2 </td>
   <td style="text-align:center;"> 0.1830514 </td>
   <td style="text-align:center;"> 3411 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.3 </td>
   <td style="text-align:center;"> 0.1954593 </td>
   <td style="text-align:center;"> 3717 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.4 </td>
   <td style="text-align:center;"> 0.3227244 </td>
   <td style="text-align:center;"> 3189 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma0 </td>
   <td style="text-align:center;"> 73.0000000 </td>
   <td style="text-align:center;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma1 </td>
   <td style="text-align:center;"> 121.6670000 </td>
   <td style="text-align:center;"> 7 </td>
  </tr>
</tbody>
</table>



Model version: seijr0.1.0

Report version: 20200511-003730-3ae5501e


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


