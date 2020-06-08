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



![plot of chunk sampling dist]({{ site.url }}/assets/20200608-131123-38b0f4ba/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in SanDiego?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200608-131123-38b0f4ba/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200608-131123-38b0f4ba/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanDiego. The dashed line indicates the date of last sample in SanDiego in this analysis.*


* Estimated cumulative infections at last sample (2020-04-29): **28960 [8103-162788]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-29: **3432**  

<!-- * Cumulative number of active infections at 2020-04-29:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200608-131123-38b0f4ba/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200608-131123-38b0f4ba/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in SanDiego. The dashed line indicates the date of last sample in SanDiego in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200608-131123-38b0f4ba/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in SanDiego. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200608-131123-38b0f4ba/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in SanDiego in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in SanDiego, respectively. *

Reproduction number at last sample (2020-04-29): **0.575 [0.307-1.35]** median [95% CrI]


## How quickly has the epidemic in SanDiego grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        1.91         |        0.0963         |         7.2          |
|   2.5%   |        1.58         |        0.0647         |          5           |
|  97.5%   |         2.4         |         0.139         |         10.7         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in SanDiego?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200608-131123-38b0f4ba/mcc.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within SanDiego, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000634 [0.000512-0.000836]** median [95% CrI]  

<!-- #### (optional) Number of introductions into SanDiego (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200608-131123-38b0f4ba/cumu_inf_exp_model.png)

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in SanDiego in this analysis. The points represent reported cases in SanDiego.*

Based on an estimated growth rate of 0.0963 [0.0647 - 0.139] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-29) as: 258900 [9148 - 20195925]

We estimate number of infections at 2020-05-13 (14 days after last sample) as:
988868 [23105 - 138530175]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```


|      Statistic      |   mean    |  ESS  |
|:-------------------:|:---------:|:-----:|
|      posterior      |  -42560   |  639  |
|     likelihood      |  -42461   | 5768  |
|        prior        |  -99.58   |  610  |
| treeLikelihood.algn |  -42461   | 5768  |
|     TreeHeight      |  0.4495   |  391  |
|      clockRate      | 0.0006439 |  474  |
|        kappa        |   5.96    | 42416 |
|     PhydynSEIR      |  -68.96   |  630  |
|       seir.E        |   16.49   |  307  |
|       seir.S        |   81953   | 1142  |
|       seir.b        |   14.95   |  900  |
|      seir.exog      |  0.09486  | 1031  |
| seir.exogGrowthRate |   24.2    |  232  |
|   seir.importRate   |   5.133   |  771  |
|      seir.p_h       |  0.2068   |  946  |
|      seir.tau       |   73.54   | 1457  |
|   freqParameter.1   |  0.2983   | 14956 |
|   freqParameter.2   |  0.1827   | 16421 |
|   freqParameter.3   |  0.1949   | 15535 |
|   freqParameter.4   |  0.3242   | 15396 |
|       gamma0        |    73     |  NA   |
|       gamma1        |   121.7   |  60   |

Table: Effective sample size of model parameters
```



Model version: seijr0.1.1

Report version: 20200608-131123-38b0f4ba


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


