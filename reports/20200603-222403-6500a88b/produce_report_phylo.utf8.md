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
title: "Phylodynamic Analysis: SanFrancisco,: 2020-04-30 "
date: June 03, 2020
---





### Primary author: Manon Ragonnet

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-06-03





## Background information  




#### This is analysis is based on : 
  
* **50 whole genomes** sampled from **within SanFrancisco**
* **47 whole genomes** sampled from outside of **SanFrancisco**
* Samples within SanFrancisco were collected between **2020-03-05** and **2020-04-30**



<img src="sample_distribution.png" width="1050" />

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in SanFrancisco?





<img src="SEIJR_plot_size.png" width="1050" />


<img src="SEIJR_plot_size_log.png" width="1050" />


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanFrancisco. The dashed line indicates the date of last sample in SanFrancisco in this analysis.*


* Estimated cumulative infections at last sample (2020-04-30): **50030 [10273-229885]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-30: **1647**  

<!-- * Cumulative number of active infections at 2020-04-30:   -->



<img src="Daily.png" width="1050" />


<img src="Daily_log.png" width="1050" />


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanFrancisco. The dashed line indicates the date of last sample in SanFrancisco in this analysis.*


<img src="reporting.png" width="1050" />

*Figure 4: Estimated percentage of daily cases reported in SanFrancisco. Error bars represent the 95% credible interval.*



<img src="Rt.png" width="1050" />

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in SanFrancisco in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in SanFrancisco, respectively. *

Reproduction number at last sample (2020-04-30): **0.472 [0.291-1.09]** median [95% CrI]


## How quickly has the epidemic in SanFrancisco grown?



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
   <td style="text-align:center;"> 2.04 </td>
   <td style="text-align:center;"> 0.108 </td>
   <td style="text-align:center;"> 6.43 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 2.5% </td>
   <td style="text-align:center;"> 1.75 </td>
   <td style="text-align:center;"> 0.0809 </td>
   <td style="text-align:center;"> 4.87 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 97.5% </td>
   <td style="text-align:center;"> 2.44 </td>
   <td style="text-align:center;"> 0.142 </td>
   <td style="text-align:center;"> 8.56 </td>
  </tr>
</tbody>
</table>






## How has SARS-CoV 2 evolved in SanFrancisco?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



<img src="mcc.png" width="600" />

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within SanFrancisco, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000634 [0.000504-0.000934]** median [95% CrI]  

<!-- #### (optional) Number of introductions into SanFrancisco (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



<img src="cumu_inf_exp_model.png" width="1050" />

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in SanFrancisco in this analysis. The points represent reported cases in SanFrancisco.*

Based on an estimated growth rate of 0.108 [0.0809 - 0.142] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-30) as: 781469 [63111 - 34718992]

We estimate number of infections at 2020-05-14 (14 days after last sample) as:
3443902 [196503 - 257337894]  




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
   <td style="text-align:center;"> -43036.3550488 </td>
   <td style="text-align:center;"> 130 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> likelihood </td>
   <td style="text-align:center;"> -42921.7731438 </td>
   <td style="text-align:center;"> 562 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> prior </td>
   <td style="text-align:center;"> -114.5819051 </td>
   <td style="text-align:center;"> 117 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> treeLikelihood.algn </td>
   <td style="text-align:center;"> -42921.7731438 </td>
   <td style="text-align:center;"> 562 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> TreeHeight </td>
   <td style="text-align:center;"> 0.5040597 </td>
   <td style="text-align:center;"> 171 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> clockRate </td>
   <td style="text-align:center;"> 0.0006528 </td>
   <td style="text-align:center;"> 122 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> kappa </td>
   <td style="text-align:center;"> 4.1186474 </td>
   <td style="text-align:center;"> 22544 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> PhydynSEIR </td>
   <td style="text-align:center;"> -83.4025076 </td>
   <td style="text-align:center;"> 116 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.E </td>
   <td style="text-align:center;"> 17.2660204 </td>
   <td style="text-align:center;"> 154 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.S </td>
   <td style="text-align:center;"> 98542.3423316 </td>
   <td style="text-align:center;"> 1137 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.b </td>
   <td style="text-align:center;"> 15.6649409 </td>
   <td style="text-align:center;"> 375 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exog </td>
   <td style="text-align:center;"> 0.2733755 </td>
   <td style="text-align:center;"> 372 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exogGrowthRate </td>
   <td style="text-align:center;"> 22.9312209 </td>
   <td style="text-align:center;"> 149 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.importRate </td>
   <td style="text-align:center;"> 7.2204133 </td>
   <td style="text-align:center;"> 412 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.p_h </td>
   <td style="text-align:center;"> 0.2091054 </td>
   <td style="text-align:center;"> 341 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.tau </td>
   <td style="text-align:center;"> 73.7522390 </td>
   <td style="text-align:center;"> 946 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.1 </td>
   <td style="text-align:center;"> 0.2979772 </td>
   <td style="text-align:center;"> 7741 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.2 </td>
   <td style="text-align:center;"> 0.1823256 </td>
   <td style="text-align:center;"> 8741 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.3 </td>
   <td style="text-align:center;"> 0.1954368 </td>
   <td style="text-align:center;"> 7953 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.4 </td>
   <td style="text-align:center;"> 0.3242604 </td>
   <td style="text-align:center;"> 7593 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma0 </td>
   <td style="text-align:center;"> 73.0000000 </td>
   <td style="text-align:center;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma1 </td>
   <td style="text-align:center;"> 121.6670000 </td>
   <td style="text-align:center;"> 34 </td>
  </tr>
</tbody>
</table>



Model version: seijr0.1.1

Report version: 20200603-222403-6500a88b


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


