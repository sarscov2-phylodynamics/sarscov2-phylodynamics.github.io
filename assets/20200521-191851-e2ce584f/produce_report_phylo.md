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
title: "Phylodynamic Analysis: STP,: 2020-04-15 "
date: May 21, 2020
---





### Primary author: Olivia Boyd

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-05-21





## Background information  




#### This is analysis is based on : 
  
* **30 whole genomes** sampled from **within STP**
* **35 whole genomes** sampled from outside of **STP**
* Samples within STP were collected between **2020-03-15** and **2020-04-15**



![plot of chunk sampling dist]({{ site.url }}/assets/20200521-191851-e2ce584f/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in STP?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200521-191851-e2ce584f/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200521-191851-e2ce584f/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in STP. The dashed line indicates the date of last sample in STP in this analysis.*


* Estimated cumulative infections at last sample (2020-04-15): **52134 [4619-942745]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-15: **929**  

<!-- * Cumulative number of active infections at 2020-04-15:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200521-191851-e2ce584f/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200521-191851-e2ce584f/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in STP. The dashed line indicates the date of last sample in STP in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200521-191851-e2ce584f/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in STP. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200521-191851-e2ce584f/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in STP in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in STP, respectively. *

Reproduction number at last sample (2020-04-15): **2.46 [0.695-3.06]** median [95% CrI]


## How quickly has the epidemic in STP grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.67         |         0.160         |         4.33         |
|   2.5%   |        1.97         |         0.102         |         2.97         |
|  97.5%   |        3.69         |         0.234         |         6.78         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in STP?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200521-191851-e2ce584f/mcc.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within STP, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000568 [0.000503-0.000743]** median [95% CrI]  

<!-- #### (optional) Number of introductions into STP (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200521-191851-e2ce584f/cumu_inf_exp_model.png)

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in STP in this analysis. The points represent reported cases in STP.*

Based on an estimated growth rate of 0.160 [0.102 - 0.234] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-15) as: 43586 [3350 - 1255908]

We estimate number of infections at 2020-05-08 (23 days after last sample) as:
1693798 [34222 - 262421754]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```


|      Statistic      |   mean    | ESS  |
|:-------------------:|:---------:|:----:|
|      posterior      |  -41671   | 347  |
|     likelihood      |  -41598   | 561  |
|        prior        |  -72.69   |  72  |
| treeLikelihood.algn |  -41598   | 561  |
|     TreeHeight      |  0.3847   |  28  |
|      clockRate      | 0.0005825 |  39  |
|        kappa        |   6.446   | 3943 |
|     PhydynSEIR      |  -37.08   |  84  |
|       seir.E        |   34.44   | 3566 |
|       seir.S        |  3500402  | 100  |
|       seir.b        |   19.75   | 1555 |
|      seir.exog      |  0.03327  | 326  |
| seir.exogGrowthRate |   26.89   |  25  |
|   seir.importRate   |   6.014   | 3086 |
|      seir.p_h       |  0.2193   | 6414 |
|      seir.tau       |   74.01   | 8774 |
|   freqParameter.1   |  0.2984   | 1601 |
|   freqParameter.2   |   0.183   | 1647 |
|   freqParameter.3   |  0.1955   | 1847 |
|   freqParameter.4   |  0.3231   | 1643 |
|       gamma0        |    73     |  NA  |
|       gamma1        |   121.7   |  4   |

Table: Effective sample size of model parameters
```



Model version: seijr0.1.1

Report version: 20200521-191851-e2ce584f


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


