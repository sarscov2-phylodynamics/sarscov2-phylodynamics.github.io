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
title: "Phylodynamic Analysis: Washington,: 2020-03-15 "
date: April 09, 2020
---





### Primary author: Manon Ragonnet

### Report prepared on 2020-04-09

#### On behalf of the MRC GIDA COVID-19 phylodynamics working group at Imperial College London: Lily Geidelberg, Olivia Boyd, Manon Ragonnet, David Jorgensen,  Igor Siveroni, Erik Volz




## Background information  




#### This is analysis is based on : 
  
* **152 whole genomes** sampled from **within Washington**
* **68 whole genomes** sampled from outside of **Washington**
* Samples within Washington were collected between **2020-02-26** and **2020-03-15**


<!-- ##### To add: [optional plot of sample distribution through time] -->



## How many are infected in Washington?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200409-105438-beb51a4d/SEIJR_plot_size.png)

*Figure 1: Cumulative estimated infections through time. Points represent reported cases in Washington. The dashed line indicates the date of last sample in Washington in this analysis.*


* Estimated cumulative infections at last sample (2020-03-15): **39962 [8790-195314]** median [95%CI]

* Cumulative confirmed infections reported at 2020-03-15: **769**  

<!-- * Cumulative number of active infections at 2020-03-15:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200409-105438-beb51a4d/Daily.png)

*Figure 2: Daily estimated infections through time. Points represent reported cases in Washington. The dashed line indicates the date of last sample in Washington in this analysis.*





![plot of chunk Rt]({{ site.url }}/assets/20200409-105438-beb51a4d/Rt.png)

*Figure 3: Reproduction number through time. The dashed line indicates the date of last sample in Washington in this analysis.*

Reproduction number at last sample (2020-03-15): **2.39 [0.419-2.9]** median [95% CrI]


## How quickly has the epidemic in Washington grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.76         |         0.167         |         4.15         |
|   2.5%   |        2.29         |         0.130         |         3.37         |
|  97.5%   |        3.28         |         0.206         |         5.33         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in Washington?



![plot of chunk mcc_tree]({{ site.url }}/assets/20200409-105438-beb51a4d/mcc.png)

*Figure 4: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Washington, blue tips from outside.*



##### Molecular clock rate of evolution: **0.00161 [0.00121-0.0022]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Washington (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200409-105438-beb51a4d/cumu_inf_exp_model.png)

*Figure 5: Cumulative estimated infections. The dashed line indicates the date of last sample in Washington in this analysis. The points represent reported cases in Washington.*

Based on an estimated growth rate of 0.167 [0.130 - 0.206] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-03-15) as: 11733 [2192 - 67438]

We estimate number of infections at 2020-03-21 (6 days after last sample) as:
32153 [4777 - 234950]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).


Model version: seijr0.0.0

Report version: 20200409-105438-beb51a4d


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


