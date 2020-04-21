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
title: "Phylodynamic Analysis: Liege,: 2020-03-31 "
date: April 21, 2020
---





### Primary author: Olivia Boyd

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-04-21





## Background information  




#### This is analysis is based on : 
  
* **50 whole genomes** sampled from **within Liege**
* **73 whole genomes** sampled from outside of **Liege**
* Samples within Liege were collected between **2020-03-05** and **2020-03-31**


<!-- ##### To add: [optional plot of sample distribution through time] -->



## How many are infected in Liege?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200421-114817-ece7e7f5/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200421-114817-ece7e7f5/SEIJR_plot_size_log.png)


*Figure 1: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Liege. The dashed line indicates the date of last sample in Liege in this analysis.*


* Estimated cumulative infections at last sample (2020-03-31): **51120 [10340-207545]** median [95%CI]

* Cumulative confirmed infections reported at 2020-03-31: **1854**  

<!-- * Cumulative number of active infections at 2020-03-31:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200421-114817-ece7e7f5/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200421-114817-ece7e7f5/Daily_log.png)


*Figure 2: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Liege. The dashed line indicates the date of last sample in Liege in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200421-114817-ece7e7f5/reporting.png)

*Figure 3: Estimated percentage of daily cases reported in Liege. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200421-114817-ece7e7f5/Rt.png)

*Figure 4: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Liege in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in Liege, respectively. *

Reproduction number at last sample (2020-03-31): **1.02 [0.214-2.7]** median [95% CrI]


## How quickly has the epidemic in Liege grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        3.48         |         0.220         |         3.16         |
|   2.5%   |        3.02         |         0.187         |         2.8          |
|  97.5%   |         3.9         |         0.247         |         3.71         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in Liege?


## *[placeholder for ML tree]*

*Figure 5: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200421-114817-ece7e7f5/mcc.png)

*Figure 6: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Liege, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000957 [0.000698-0.00114]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Liege (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200421-114817-ece7e7f5/cumu_inf_exp_model.png)

*Figure 7: Cumulative estimated infections. The dashed line indicates the date of last sample in Liege in this analysis. The points represent reported cases in Liege.*

Based on an estimated growth rate of 0.220 [0.187 - 0.247] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-03-31) as: 113838 [25519 - 690359]

We estimate number of infections at 2020-04-10 (10 days after last sample) as:
1040182 [164414 - 7399452]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).


Model version: seijr0.1.0

Report version: 20200421-114817-ece7e7f5


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


