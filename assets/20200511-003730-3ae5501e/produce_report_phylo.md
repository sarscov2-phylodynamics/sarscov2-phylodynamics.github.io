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

These numbers will differ from the number of uploaded sequence on GISAID as we remove sequences with likely sequencing errors or significant gaps. Sequences were deduplicated prior to analyses. 


![plot of chunk sampling dist]({{ site.url }}/assets/20200511-003730-3ae5501e/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in St.Petersburg?


Using a phylodynamic model we estimate epidemiological parameters utilising SARS-CoV 2 sequence data from St.Petersburg together with a background set of sequences sampled from the larger internationational viral population. [The model is explained in detail here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf). Reported case numbers from St.Petersburg for comparison are extracted from [стопкоронавирус, translation stop coronavirus, which is the site for official information on coronavirus in Russia](https://стопкоронавирус.рф/information/).


![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200511-003730-3ae5501e/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200511-003730-3ae5501e/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in St.Petersburg. The dashed line indicates the date of last sample in St.Petersburg in this analysis.*


* Estimated cumulative infections at last sample (2020-04-15): **615344 [24064-6034569]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-15: **929**

We estimate about 12% of the population of St. Petersburg to be infected by the date of our last sample (2020-04-15). 

<!-- * Cumulative number of active infections at 2020-04-15:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200511-003730-3ae5501e/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200511-003730-3ae5501e/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in St.Petersburg. The dashed line indicates the date of last sample in St.Petersburg in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200511-003730-3ae5501e/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in St.Petersburg. Error bars represent the 95% credible interval.*

Towards the end of the curve the increase in daily number infections each day begins to plateau. This may be due to the shutting of all non-essential activities on [2020-03-30 across most of Russia, including St.Petersburg](https://fontanka.ru/2020/03/30/69060805/). However, further anlayses are required to assess the impact of non-pharmaceutical interventions on transmission in this region.

![plot of chunk Rt]({{ site.url }}/assets/20200511-003730-3ae5501e/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in St.Petersburg in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in St.Petersburg, respectively. *

Reproduction number at last sample (2020-04-15): **2.54 [0.0721-3.38]** median [95% CrI]

We estimate the reproduction number to decrease over time, with a steeper decrease following the introduction of lockdown in St.Petersburg. The lower bound of the confidence interval drops below 1 by the date of last sample, suggesting the possibility for R to be decreasing at a faster rate than estimated here. As we only use 30 internal genome sequences for analyses, we expect the confidence intervals to be quite wide in our analyses. 

## How quickly has the epidemic in St.Petersburg grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        3.78         |         0.240         |         2.89         |
|   2.5%   |         2.6         |         0.155         |         2.08         |
|  97.5%   |        5.34         |         0.334         |         4.48         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in St.Petersburg?



![plot of chunk mcc_tree]({{ site.url }}/assets/20200511-003730-3ae5501e/mcc.png)

*Figure 6: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within St.Petersburg, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000592 [0.000506-0.000747]** median [95% CrI]  

<!-- #### (optional) Number of introductions into St.Petersburg (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200511-003730-3ae5501e/cumu_inf_exp_model.png)

*Figure 7: Cumulative estimated infections. The dashed line indicates the date of last sample in St.Petersburg in this analysis. The points represent reported cases in St.Petersburg.*

Based on an estimated growth rate of 0.240 [0.155 - 0.334] median [95% CrI], we use an exponential model to estimate infections.   

We estimate cumulative number of infections at last sample (2020-04-15) as: 1154935 [25592 - 103859578]

We estimate number of infections at 2020-05-10 (25 days after last sample) as:
452217605 [1527384 - NA]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```


|      Statistic      |   mean    | ESS  |
|:-------------------:|:---------:|:----:|
|      posterior      |  -41790   |  29  |
|     likelihood      |  -41739   |  15  |
|        prior        |  -50.96   |  33  |
| treeLikelihood.algn |  -41739   |  15  |
|     TreeHeight      |  0.4475   |  24  |
|      clockRate      | 0.0006005 | 117  |
|        kappa        |   5.655   | 8924 |
|     PhydynSEIR      |  -13.79   |  32  |
|       seir.E        |   26.99   |  14  |
|       seir.S        |  4808293  |  20  |
|       seir.b        |   27.85   |  44  |
|      seir.exog      |  0.1166   |  93  |
| seir.exogGrowthRate |   24.3    |  59  |
|   seir.importRate   |   7.85    |  64  |
|      seir.p_h       |  0.2203   |  52  |
|      seir.tau       |   75.51   | 420  |
|   freqParameter.1   |  0.2988   | 3640 |
|   freqParameter.2   |  0.1831   | 3411 |
|   freqParameter.3   |  0.1955   | 3717 |
|   freqParameter.4   |  0.3227   | 3189 |
|       gamma0        |    73     |  NA  |
|       gamma1        |   121.7   |  7   |

Table: Effective sample size of model parameters
```



Model version: seijr0.1.0

Report version: 20200511-003730-3ae5501e


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


