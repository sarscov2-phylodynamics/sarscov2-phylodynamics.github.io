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
title: "Phylodynamic Analysis: ComunitatValenciana,: 2020-04-01 "
date: June 03, 2020
---





### Primary author: Manon Ragonnet

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-06-03





## Background information  




#### This is analysis is based on : 
  
* **54 whole genomes** sampled from **within ComunitatValenciana**
* **49 whole genomes** sampled from outside of **ComunitatValenciana**
* Samples within ComunitatValenciana were collected between **2020-02-27** and **2020-04-01**



<img src="sample_distribution.png" width="1050" />

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in ComunitatValenciana?





<img src="SEIJR_plot_size.png" width="1050" />


<img src="SEIJR_plot_size_log.png" width="1050" />


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in ComunitatValenciana. The dashed line indicates the date of last sample in ComunitatValenciana in this analysis.*


* Estimated cumulative infections at last sample (2020-04-01): **17807 [6980-76264]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-01: **5413**  

<!-- * Cumulative number of active infections at 2020-04-01:   -->



<img src="Daily.png" width="1050" />


<img src="Daily_log.png" width="1050" />


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in ComunitatValenciana. The dashed line indicates the date of last sample in ComunitatValenciana in this analysis.*


<img src="reporting.png" width="1050" />

*Figure 4: Estimated percentage of daily cases reported in ComunitatValenciana. Error bars represent the 95% credible interval.*



<img src="Rt.png" width="1050" />

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in ComunitatValenciana in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in ComunitatValenciana, respectively. *

Reproduction number at last sample (2020-04-01): **0.926 [0.31-1.8]** median [95% CrI]


## How quickly has the epidemic in ComunitatValenciana grown?



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
   <td style="text-align:center;"> 2.16 </td>
   <td style="text-align:center;"> 0.119 </td>
   <td style="text-align:center;"> 5.84 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 2.5% </td>
   <td style="text-align:center;"> 1.82 </td>
   <td style="text-align:center;"> 0.0876 </td>
   <td style="text-align:center;"> 4.41 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 97.5% </td>
   <td style="text-align:center;"> 2.63 </td>
   <td style="text-align:center;"> 0.157 </td>
   <td style="text-align:center;"> 7.91 </td>
  </tr>
</tbody>
</table>






## How has SARS-CoV 2 evolved in ComunitatValenciana?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



<img src="mcc.png" width="600" />

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within ComunitatValenciana, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000818 [0.000645-0.00108]** median [95% CrI]  

<!-- #### (optional) Number of introductions into ComunitatValenciana (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



<img src="cumu_inf_exp_model.png" width="1050" />

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in ComunitatValenciana in this analysis. The points represent reported cases in ComunitatValenciana.*

Based on an estimated growth rate of 0.119 [0.0876 - 0.157] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-01) as: 45488 [4200 - 765374]

We estimate number of infections at 2020-05-18 (47 days after last sample) as:
12297096 [249384 - 1307777938]  




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
   <td style="text-align:center;"> -43004.0891118 </td>
   <td style="text-align:center;"> 194 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> likelihood </td>
   <td style="text-align:center;"> -42889.2294620 </td>
   <td style="text-align:center;"> 5846 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> prior </td>
   <td style="text-align:center;"> -114.8596497 </td>
   <td style="text-align:center;"> 190 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> treeLikelihood.algn </td>
   <td style="text-align:center;"> -42889.2294620 </td>
   <td style="text-align:center;"> 5846 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> TreeHeight </td>
   <td style="text-align:center;"> 0.4456592 </td>
   <td style="text-align:center;"> 350 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> clockRate </td>
   <td style="text-align:center;"> 0.0008301 </td>
   <td style="text-align:center;"> 332 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> kappa </td>
   <td style="text-align:center;"> 3.3730683 </td>
   <td style="text-align:center;"> 32227 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> PhydynSEIR </td>
   <td style="text-align:center;"> -85.0402697 </td>
   <td style="text-align:center;"> 188 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.E </td>
   <td style="text-align:center;"> 16.4563617 </td>
   <td style="text-align:center;"> 206 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.S </td>
   <td style="text-align:center;"> 67938.6628361 </td>
   <td style="text-align:center;"> 654 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.b </td>
   <td style="text-align:center;"> 16.8986965 </td>
   <td style="text-align:center;"> 511 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exog </td>
   <td style="text-align:center;"> 0.0610555 </td>
   <td style="text-align:center;"> 885 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.exogGrowthRate </td>
   <td style="text-align:center;"> 24.1613994 </td>
   <td style="text-align:center;"> 221 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.importRate </td>
   <td style="text-align:center;"> 4.1533722 </td>
   <td style="text-align:center;"> 340 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.p_h </td>
   <td style="text-align:center;"> 0.2065432 </td>
   <td style="text-align:center;"> 411 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> seir.tau </td>
   <td style="text-align:center;"> 73.7347635 </td>
   <td style="text-align:center;"> 946 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.1 </td>
   <td style="text-align:center;"> 0.2975582 </td>
   <td style="text-align:center;"> 11832 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.2 </td>
   <td style="text-align:center;"> 0.1829101 </td>
   <td style="text-align:center;"> 12669 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.3 </td>
   <td style="text-align:center;"> 0.1950966 </td>
   <td style="text-align:center;"> 13228 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> freqParameter.4 </td>
   <td style="text-align:center;"> 0.3244351 </td>
   <td style="text-align:center;"> 11025 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma0 </td>
   <td style="text-align:center;"> 73.0000000 </td>
   <td style="text-align:center;"> NaN </td>
  </tr>
  <tr>
   <td style="text-align:center;"> gamma1 </td>
   <td style="text-align:center;"> 121.6670000 </td>
   <td style="text-align:center;"> 45 </td>
  </tr>
</tbody>
</table>



Model version: seijr0.1.1

Report version: 20200603-213411-77f3c86e


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


