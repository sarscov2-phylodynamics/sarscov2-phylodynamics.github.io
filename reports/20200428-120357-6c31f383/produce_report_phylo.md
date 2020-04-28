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



![plot of chunk sampling dist]({{ site.url }}/assets/20200428-120357-6c31f383/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in Wisconsin?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200428-120357-6c31f383/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200428-120357-6c31f383/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Wisconsin. The dashed line indicates the date of last sample in Wisconsin in this analysis.*


* Estimated cumulative infections at last sample (2020-04-06): **20495 [7623-86820]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-06: **2440**  

<!-- * Cumulative number of active infections at 2020-04-06:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200428-120357-6c31f383/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200428-120357-6c31f383/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Wisconsin. The dashed line indicates the date of last sample in Wisconsin in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200428-120357-6c31f383/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in Wisconsin. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200428-120357-6c31f383/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Wisconsin in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in Wisconsin, respectively. *

Reproduction number at last sample (2020-04-06): **1.35 [0.451-1.98]** median [95% CrI]


## How quickly has the epidemic in Wisconsin grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.29         |         0.130         |         5.34         |
|   2.5%   |        1.96         |         0.101         |         4.42         |
|  97.5%   |        2.62         |         0.157         |         6.89         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in Wisconsin?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200428-120357-6c31f383/mcc.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Wisconsin, blue tips from outside.*




##### Molecular clock rate of evolution: **0.00123 [0.000982-0.00152]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Wisconsin (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200428-120357-6c31f383/cumu_inf_exp_model.png)

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in Wisconsin in this analysis. The points represent reported cases in Wisconsin.*

Based on an estimated growth rate of 0.130 [0.101 - 0.157] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-06) as: 31591 [4148 - 200122]

We estimate number of infections at 2020-04-20 (14 days after last sample) as:
196866 [17518 - 1722897]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```


|      Statistic      |   mean   |  ESS  |
|:-------------------:|:--------:|:-----:|
|      posterior      |  -43170  |  131  |
|     likelihood      |  -43056  |  993  |
|        prior        |  -114.2  |  103  |
|   treeLikelihood    |  -43056  |  993  |
|     TreeHeight      |  0.2906  |  97   |
|      clockRate      | 0.001232 |  108  |
|        kappa        |  5.512   | 18353 |
|     PhydynSEIR      |  -82.37  |  121  |
|       seir.E        |  5.045   |  101  |
|       seir.S        |  91038   |  204  |
|       seir.b        |  17.47   |  76   |
|      seir.exog      | 0.006643 |  72   |
| seir.exogGrowthRate |  26.22   |  39   |
|   seir.importRate   |  8.803   | 1789  |
|      seir.p_h       |  0.2094  |  86   |
|      seir.tau       |  74.07   |  144  |
|   freqParameter.1   |  0.2976  | 5551  |
|   freqParameter.2   |  0.1824  | 6024  |
|   freqParameter.3   |  0.1952  | 6393  |
|   freqParameter.4   |  0.3248  | 5161  |
|       gamma0        |    73    |  NA   |
|       gamma1        |  121.7   |  31   |

Table: Effective sample size of model parameters
```



Model version: seijr0.1.0

Report version: 20200428-120357-6c31f383


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


