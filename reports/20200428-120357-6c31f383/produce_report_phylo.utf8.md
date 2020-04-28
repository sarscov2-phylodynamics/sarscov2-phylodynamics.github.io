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
title: "Phylodynamic Analysis: Wisconsin,: 2020-04-06 "
date: April 28, 2020
---





### Primary author: Lily Geidelberg

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-04-28





## Background information  




#### This is analysis is based on : 
  
* **47 whole genomes** sampled from **within Wisconsin**
* **75 whole genomes** sampled from outside of **Wisconsin**
* Samples within Wisconsin were collected between **2020-03-14** and **2020-04-06**



<img src="sample_distribution.png" width="1050" />

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in Wisconsin?





<img src="SEIJR_plot_size.png" width="1050" />


<img src="SEIJR_plot_size_log.png" width="1050" />


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Wisconsin. The dashed line indicates the date of last sample in Wisconsin in this analysis.*


* Estimated cumulative infections at last sample (2020-04-06): **20495 [7623-86820]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-06: **2440**  

<!-- * Cumulative number of active infections at 2020-04-06:   -->



<img src="Daily.png" width="1050" />


<img src="Daily_log.png" width="1050" />


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Wisconsin. The dashed line indicates the date of last sample in Wisconsin in this analysis.*


<img src="reporting.png" width="1050" />

*Figure 4: Estimated percentage of daily cases reported in Wisconsin. Error bars represent the 95% credible interval.*



<img src="Rt.png" width="1050" />

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Wisconsin in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in Wisconsin, respectively. *

Reproduction number at last sample (2020-04-06): **1.35 [0.451-1.98]** median [95% CrI]


## How quickly has the epidemic in Wisconsin grown?



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
   <td style="text-align:center;"> 2.29 </td>
   <td style="text-align:center;"> 0.130 </td>
   <td style="text-align:center;"> 5.34 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 2.5% </td>
   <td style="text-align:center;"> 1.96 </td>
   <td style="text-align:center;"> 0.101 </td>
   <td style="text-align:center;"> 4.42 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 97.5% </td>
   <td style="text-align:center;"> 2.62 </td>
   <td style="text-align:center;"> 0.157 </td>
   <td style="text-align:center;"> 6.89 </td>
  </tr>
</tbody>
</table>






## How has SARS-CoV 2 evolved in Wisconsin?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



<img src="mcc.png" width="600" />

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Wisconsin, blue tips from outside.*




##### Molecular clock rate of evolution: **0.00123 [0.000982-0.00152]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Wisconsin (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



<img src="cumu_inf_exp_model.png" width="1050" />

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in Wisconsin in this analysis. The points represent reported cases in Wisconsin.*

Based on an estimated growth rate of 0.130 [0.101 - 0.157] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-06) as: 31591 [4148 - 200122]

We estimate number of infections at 2020-04-20 (14 days after last sample) as:
196866 [17518 - 1722897]  




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
   <td style="text-align:center;"> -43170.3815125 </td>
   <td style="text-align:center;"> 131 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> likelihood </td>
   <td style="text-align:center;"> -43056.1746799 </td>
   <td style="text-align:center;"> 993 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> prior </td>
   <td style="text-align:center;"> -114.2068326 </td>
   <td style="text-align:center;"> 103 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> treeLikelihood </td>
   <td style="text-align:center;"> -43056.1746799 </td>
   <td style="text-align:center;"> 993 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> TreeHeight </td>
   <td style="text-align:center;"> 0.2906393 </td>
   <td style="text-align:center;"> 97 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> clockRate </td>
   <td style="text-align:center;"> 0.0012322 </td>
   <td style="text-align:center;"> 108 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> kappa </td>
   <td style="text-align:center;"> 5.5121406 </td>
   <td style="text-align:center;"> 18353 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> PhydynSEIR </td>
   <td style="text-align:center;"> -82.3713583 </td>
   <td style="text-align:center;"> 121 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.E </td>
   <td style="text-align:center;"> 5.0449482 </td>
   <td style="text-align:center;"> 101 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.S </td>
   <td style="text-align:center;"> 91037.9296355 </td>
   <td style="text-align:center;"> 204 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.b </td>
   <td style="text-align:center;"> 17.4727063 </td>
   <td style="text-align:center;"> 76 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exog </td>
   <td style="text-align:center;"> 0.0066425 </td>
   <td style="text-align:center;"> 72 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exogGrowthRate </td>
   <td style="text-align:center;"> 26.2228792 </td>
   <td style="text-align:center;"> 39 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.importRate </td>
   <td style="text-align:center;"> 8.8031437 </td>
   <td style="text-align:center;"> 1789 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.p_h </td>
   <td style="text-align:center;"> 0.2094323 </td>
   <td style="text-align:center;"> 86 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.tau </td>
   <td style="text-align:center;"> 74.0650543 </td>
   <td style="text-align:center;"> 144 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.1 </td>
   <td style="text-align:center;"> 0.2976414 </td>
   <td style="text-align:center;"> 5551 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.2 </td>
   <td style="text-align:center;"> 0.1823715 </td>
   <td style="text-align:center;"> 6024 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.3 </td>
   <td style="text-align:center;"> 0.1951789 </td>
   <td style="text-align:center;"> 6393 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.4 </td>
   <td style="text-align:center;"> 0.3248082 </td>
   <td style="text-align:center;"> 5161 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma0 </td>
   <td style="text-align:center;"> 73.0000000 </td>
   <td style="text-align:center;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma1 </td>
   <td style="text-align:center;"> 121.6670000 </td>
   <td style="text-align:center;"> 31 </td>
  </tr>
</tbody>
</table>



Model version: seijr0.1.0

Report version: 20200428-120357-6c31f383


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


