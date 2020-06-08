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



![plot of chunk sampling dist]({{ site.url }}/assets/20200602-193403-b45dfb4b/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in Portugal?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200602-193403-b45dfb4b/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200602-193403-b45dfb4b/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Portugal. The dashed line indicates the date of last sample in Portugal in this analysis.*


* Estimated cumulative infections at last sample (2020-05-04): **35595 [9810-181514]** median [95%CI]

* Cumulative confirmed infections reported at 2020-05-04: **25524**  

<!-- * Cumulative number of active infections at 2020-05-04:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200602-193403-b45dfb4b/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200602-193403-b45dfb4b/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Portugal. The dashed line indicates the date of last sample in Portugal in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200602-193403-b45dfb4b/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in Portugal. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200602-193403-b45dfb4b/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Portugal in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in Portugal, respectively. *

Reproduction number at last sample (2020-05-04): **0.249 [0.0812-0.909]** median [95% CrI]


## How quickly has the epidemic in Portugal grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |         2.9         |         0.178         |         3.9          |
|   2.5%   |        2.18         |         0.121         |         2.75         |
|  97.5%   |        3.97         |         0.252         |         5.75         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in Portugal?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200602-193403-b45dfb4b/mcc.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Portugal, blue tips from outside.*




##### Molecular clock rate of evolution: **0.00144 [0.00117-0.00175]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Portugal (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200602-193403-b45dfb4b/cumu_inf_exp_model.png)

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in Portugal in this analysis. The points represent reported cases in Portugal.*

Based on an estimated growth rate of 0.178 [0.121 - 0.252] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-05-04) as: 4918483 [62421 - 1239184180]

We estimate number of infections at 2020-05-18 (14 days after last sample) as:
56613908 [390104 - NA]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```


|      Statistic      |   mean   | ESS  |
|:-------------------:|:--------:|:----:|
|      posterior      |  -43503  | 788  |
|     likelihood      |  -43426  | 215  |
|        prior        |  -76.69  | 509  |
| treeLikelihood.algn |  -43426  | 215  |
|     TreeHeight      |  0.3311  | 417  |
|      clockRate      | 0.001441 | 158  |
|        kappa        |  5.264   | 2634 |
|     PhydynSEIR      |  -44.08  | 385  |
|       seir.E        |  28.32   | 376  |
|       seir.S        |  67972   | 126  |
|       seir.b        |  19.52   | 204  |
|      seir.exog      | 0.000716 |  99  |
| seir.exogGrowthRate |  30.79   |  26  |
|   seir.importRate   |   7.69   | 421  |
|      seir.p_h       |  0.2492  | 489  |
|      seir.tau       |  74.13   | 338  |
|   freqParameter.1   |  0.2978  | 1082 |
|   freqParameter.2   |  0.1827  | 1163 |
|   freqParameter.3   |  0.195   | 858  |
|   freqParameter.4   |  0.3245  | 974  |
|       gamma0        |    73    |  NA  |
|       gamma1        |  121.7   |  4   |

Table: Effective sample size of model parameters
```



Model version: seijr0.1.0

Report version: 20200602-193403-b45dfb4b


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


