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
title: "Phylodynamic Analysis: SanDiego,: 2020-04-29 "
date: June 08, 2020
---





### Primary author: Manon Ragonnet

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-06-08





## Background information  




#### This is analysis is based on : 
  
* **35 whole genomes** sampled from **within SanDiego**
* **51 whole genomes** sampled from outside of **SanDiego**
* Samples within SanDiego were collected between **2020-03-11** and **2020-04-29**



<img src="sample_distribution.png" width="1050" />

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in SanDiego?





<img src="SEIJR_plot_size.png" width="1050" />


<img src="SEIJR_plot_size_log.png" width="1050" />


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanDiego. The dashed line indicates the date of last sample in SanDiego in this analysis.*


* Estimated cumulative infections at last sample (2020-04-29): **28960 [8103-162788]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-29: **3432**  

<!-- * Cumulative number of active infections at 2020-04-29:   -->



<img src="Daily.png" width="1050" />


<img src="Daily_log.png" width="1050" />


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanDiego. The dashed line indicates the date of last sample in SanDiego in this analysis.*


<img src="reporting.png" width="1050" />

*Figure 4: Estimated percentage of daily cases reported in SanDiego. Error bars represent the 95% credible interval.*



<img src="Rt.png" width="1050" />

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in SanDiego in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in SanDiego, respectively. *

Reproduction number at last sample (2020-04-29): **0.575 [0.307-1.35]** median [95% CrI]


## How quickly has the epidemic in SanDiego grown?



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
   <td style="text-align:center;"> 1.91 </td>
   <td style="text-align:center;"> 0.0963 </td>
   <td style="text-align:center;"> 7.2 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 2.5% </td>
   <td style="text-align:center;"> 1.58 </td>
   <td style="text-align:center;"> 0.0647 </td>
   <td style="text-align:center;"> 5.0 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 97.5% </td>
   <td style="text-align:center;"> 2.40 </td>
   <td style="text-align:center;"> 0.139 </td>
   <td style="text-align:center;"> 10.7 </td>
  </tr>
</tbody>
</table>






## How has SARS-CoV 2 evolved in SanDiego?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



<img src="mcc.png" width="600" />

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within SanDiego, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000634 [0.000512-0.000836]** median [95% CrI]  

<!-- #### (optional) Number of introductions into SanDiego (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



<img src="cumu_inf_exp_model.png" width="1050" />

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in SanDiego in this analysis. The points represent reported cases in SanDiego.*

Based on an estimated growth rate of 0.0963 [0.0647 - 0.139] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-29) as: 258900 [9148 - 20195925]

We estimate number of infections at 2020-05-13 (14 days after last sample) as:
988868 [23105 - 138530175]  




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
   <td style="text-align:center;"> -42560.1804896 </td>
   <td style="text-align:center;"> 639 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> likelihood </td>
   <td style="text-align:center;"> -42460.5984774 </td>
   <td style="text-align:center;"> 5768 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> prior </td>
   <td style="text-align:center;"> -99.5820122 </td>
   <td style="text-align:center;"> 610 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> treeLikelihood.algn </td>
   <td style="text-align:center;"> -42460.5984774 </td>
   <td style="text-align:center;"> 5768 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> TreeHeight </td>
   <td style="text-align:center;"> 0.4494815 </td>
   <td style="text-align:center;"> 391 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> clockRate </td>
   <td style="text-align:center;"> 0.0006439 </td>
   <td style="text-align:center;"> 474 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> kappa </td>
   <td style="text-align:center;"> 5.9602789 </td>
   <td style="text-align:center;"> 42416 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> PhydynSEIR </td>
   <td style="text-align:center;"> -68.9568565 </td>
   <td style="text-align:center;"> 630 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.E </td>
   <td style="text-align:center;"> 16.4942363 </td>
   <td style="text-align:center;"> 307 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.S </td>
   <td style="text-align:center;"> 81952.8655336 </td>
   <td style="text-align:center;"> 1142 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.b </td>
   <td style="text-align:center;"> 14.9502476 </td>
   <td style="text-align:center;"> 900 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exog </td>
   <td style="text-align:center;"> 0.0948556 </td>
   <td style="text-align:center;"> 1031 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exogGrowthRate </td>
   <td style="text-align:center;"> 24.1968122 </td>
   <td style="text-align:center;"> 232 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.importRate </td>
   <td style="text-align:center;"> 5.1334171 </td>
   <td style="text-align:center;"> 771 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.p_h </td>
   <td style="text-align:center;"> 0.2068247 </td>
   <td style="text-align:center;"> 946 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.tau </td>
   <td style="text-align:center;"> 73.5401759 </td>
   <td style="text-align:center;"> 1457 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.1 </td>
   <td style="text-align:center;"> 0.2982554 </td>
   <td style="text-align:center;"> 14956 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.2 </td>
   <td style="text-align:center;"> 0.1826768 </td>
   <td style="text-align:center;"> 16421 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.3 </td>
   <td style="text-align:center;"> 0.1948766 </td>
   <td style="text-align:center;"> 15535 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.4 </td>
   <td style="text-align:center;"> 0.3241912 </td>
   <td style="text-align:center;"> 15396 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma0 </td>
   <td style="text-align:center;"> 73.0000000 </td>
   <td style="text-align:center;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma1 </td>
   <td style="text-align:center;"> 121.6670000 </td>
   <td style="text-align:center;"> 60 </td>
  </tr>
</tbody>
</table>



Model version: seijr0.1.1

Report version: 20200608-131123-38b0f4ba


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


