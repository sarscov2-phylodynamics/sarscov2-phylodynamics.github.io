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
title: "Phylodynamic Analysis: Portugal,: 2020-05-04 "
date: June 02, 2020
---





### Primary author: Manon Ragonnet

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-06-02





## Background information  




#### This is analysis is based on : 
  
* **59 whole genomes** sampled from **within Portugal**
* **43 whole genomes** sampled from outside of **Portugal**
* Samples within Portugal were collected between **2020-03-03** and **2020-05-04**



<img src="sample_distribution.png" width="1050" />

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in Portugal?





<img src="SEIJR_plot_size.png" width="1050" />


<img src="SEIJR_plot_size_log.png" width="1050" />


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Portugal. The dashed line indicates the date of last sample in Portugal in this analysis.*


* Estimated cumulative infections at last sample (2020-05-04): **35595 [9810-181514]** median [95%CI]

* Cumulative confirmed infections reported at 2020-05-04: **25524**  

<!-- * Cumulative number of active infections at 2020-05-04:   -->



<img src="Daily.png" width="1050" />


<img src="Daily_log.png" width="1050" />


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Portugal. The dashed line indicates the date of last sample in Portugal in this analysis.*


<img src="reporting.png" width="1050" />

*Figure 4: Estimated percentage of daily cases reported in Portugal. Error bars represent the 95% credible interval.*



<img src="Rt.png" width="1050" />

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Portugal in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in Portugal, respectively. *

Reproduction number at last sample (2020-05-04): **0.249 [0.0812-0.909]** median [95% CrI]


## How quickly has the epidemic in Portugal grown?



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
   <td style="text-align:center;"> 2.90 </td>
   <td style="text-align:center;"> 0.178 </td>
   <td style="text-align:center;"> 3.90 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 2.5% </td>
   <td style="text-align:center;"> 2.18 </td>
   <td style="text-align:center;"> 0.121 </td>
   <td style="text-align:center;"> 2.75 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 97.5% </td>
   <td style="text-align:center;"> 3.97 </td>
   <td style="text-align:center;"> 0.252 </td>
   <td style="text-align:center;"> 5.75 </td>
  </tr>
</tbody>
</table>






## How has SARS-CoV 2 evolved in Portugal?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



<img src="mcc.png" width="600" />

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Portugal, blue tips from outside.*




##### Molecular clock rate of evolution: **0.00144 [0.00117-0.00175]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Portugal (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



<img src="cumu_inf_exp_model.png" width="1050" />

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in Portugal in this analysis. The points represent reported cases in Portugal.*

Based on an estimated growth rate of 0.178 [0.121 - 0.252] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-05-04) as: 4918483 [62421 - 1239184180]

We estimate number of infections at 2020-05-18 (14 days after last sample) as:
56613908 [390104 - NA]  




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
   <td style="text-align:center;"> -43502.7616729 </td>
   <td style="text-align:center;"> 788 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> likelihood </td>
   <td style="text-align:center;"> -43426.0713057 </td>
   <td style="text-align:center;"> 215 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> prior </td>
   <td style="text-align:center;"> -76.6903672 </td>
   <td style="text-align:center;"> 509 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> treeLikelihood.algn </td>
   <td style="text-align:center;"> -43426.0713057 </td>
   <td style="text-align:center;"> 215 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> TreeHeight </td>
   <td style="text-align:center;"> 0.3311030 </td>
   <td style="text-align:center;"> 417 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> clockRate </td>
   <td style="text-align:center;"> 0.0014414 </td>
   <td style="text-align:center;"> 158 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> kappa </td>
   <td style="text-align:center;"> 5.2641602 </td>
   <td style="text-align:center;"> 2634 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> PhydynSEIR </td>
   <td style="text-align:center;"> -44.0764237 </td>
   <td style="text-align:center;"> 385 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.E </td>
   <td style="text-align:center;"> 28.3242099 </td>
   <td style="text-align:center;"> 376 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.S </td>
   <td style="text-align:center;"> 67971.9331470 </td>
   <td style="text-align:center;"> 126 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.b </td>
   <td style="text-align:center;"> 19.5189060 </td>
   <td style="text-align:center;"> 204 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exog </td>
   <td style="text-align:center;"> 0.0007160 </td>
   <td style="text-align:center;"> 99 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exogGrowthRate </td>
   <td style="text-align:center;"> 30.7922458 </td>
   <td style="text-align:center;"> 26 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.importRate </td>
   <td style="text-align:center;"> 7.6899555 </td>
   <td style="text-align:center;"> 421 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.p_h </td>
   <td style="text-align:center;"> 0.2491599 </td>
   <td style="text-align:center;"> 489 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.tau </td>
   <td style="text-align:center;"> 74.1272939 </td>
   <td style="text-align:center;"> 338 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.1 </td>
   <td style="text-align:center;"> 0.2978334 </td>
   <td style="text-align:center;"> 1082 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.2 </td>
   <td style="text-align:center;"> 0.1826648 </td>
   <td style="text-align:center;"> 1163 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.3 </td>
   <td style="text-align:center;"> 0.1950205 </td>
   <td style="text-align:center;"> 858 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.4 </td>
   <td style="text-align:center;"> 0.3244812 </td>
   <td style="text-align:center;"> 974 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma0 </td>
   <td style="text-align:center;"> 73.0000000 </td>
   <td style="text-align:center;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma1 </td>
   <td style="text-align:center;"> 121.6670000 </td>
   <td style="text-align:center;"> 4 </td>
  </tr>
</tbody>
</table>



Model version: seijr0.1.0

Report version: 20200602-193403-b45dfb4b


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


