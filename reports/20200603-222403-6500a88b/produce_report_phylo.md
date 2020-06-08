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



![plot of chunk sampling dist]({{ site.url }}/assets/20200603-222403-6500a88b/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in SanFrancisco?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200603-222403-6500a88b/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200603-222403-6500a88b/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanFrancisco. The dashed line indicates the date of last sample in SanFrancisco in this analysis.*


* Estimated cumulative infections at last sample (2020-04-30): **50030 [10273-229885]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-30: **1647**  

<!-- * Cumulative number of active infections at 2020-04-30:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200603-222403-6500a88b/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200603-222403-6500a88b/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanFrancisco. The dashed line indicates the date of last sample in SanFrancisco in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200603-222403-6500a88b/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in SanFrancisco. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200603-222403-6500a88b/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in SanFrancisco in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in SanFrancisco, respectively. *

Reproduction number at last sample (2020-04-30): **0.472 [0.291-1.09]** median [95% CrI]


## How quickly has the epidemic in SanFrancisco grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.04         |         0.108         |         6.43         |
|   2.5%   |        1.75         |        0.0809         |         4.87         |
|  97.5%   |        2.44         |         0.142         |         8.56         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in SanFrancisco?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200603-222403-6500a88b/mcc.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within SanFrancisco, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000634 [0.000504-0.000934]** median [95% CrI]  

<!-- #### (optional) Number of introductions into SanFrancisco (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200603-222403-6500a88b/cumu_inf_exp_model.png)

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in SanFrancisco in this analysis. The points represent reported cases in SanFrancisco.*

Based on an estimated growth rate of 0.108 [0.0809 - 0.142] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-30) as: 781469 [63111 - 34718992]

We estimate number of infections at 2020-05-14 (14 days after last sample) as:
3443902 [196503 - 257337894]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```


|      Statistic      |   mean    |  ESS  |
|:-------------------:|:---------:|:-----:|
|      posterior      |  -43036   |  130  |
|     likelihood      |  -42922   |  562  |
|        prior        |  -114.6   |  117  |
| treeLikelihood.algn |  -42922   |  562  |
|     TreeHeight      |  0.5041   |  171  |
|      clockRate      | 0.0006528 |  122  |
|        kappa        |   4.119   | 22544 |
|     PhydynSEIR      |   -83.4   |  116  |
|       seir.E        |   17.27   |  154  |
|       seir.S        |   98542   | 1137  |
|       seir.b        |   15.66   |  375  |
|      seir.exog      |  0.2734   |  372  |
| seir.exogGrowthRate |   22.93   |  149  |
|   seir.importRate   |   7.22    |  412  |
|      seir.p_h       |  0.2091   |  341  |
|      seir.tau       |   73.75   |  946  |
|   freqParameter.1   |   0.298   | 7741  |
|   freqParameter.2   |  0.1823   | 8741  |
|   freqParameter.3   |  0.1954   | 7953  |
|   freqParameter.4   |  0.3243   | 7593  |
|       gamma0        |    73     |  NA   |
|       gamma1        |   121.7   |  34   |

Table: Effective sample size of model parameters
```



Model version: seijr0.1.1

Report version: 20200603-222403-6500a88b


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


