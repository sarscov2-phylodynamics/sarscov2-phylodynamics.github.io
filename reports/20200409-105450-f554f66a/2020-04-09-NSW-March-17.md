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
title: "Phylodynamic Analysis: NSW,: 2020-03-17 "
date: April 09, 2020
---





### Primary author: David Jorgensen

### Report prepared on 2020-04-09

#### On behalf of the MRC GIDA COVID-19 phylodynamics working group at Imperial College London: Lily Geidelberg, Olivia Boyd, Manon Ragonnet, David Jorgensen,  Igor Siveroni, Erik Volz




## Background information  




#### This is analysis is based on : 
  
* **43 whole genomes** sampled from **within NSW**
* **62 whole genomes** sampled from outside of **NSW**
* Samples within NSW were collected between **2020-01-18** and **2020-03-17**


<!-- ##### To add: [optional plot of sample distribution through time] -->



## How many are infected in NSW?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200409-105450-f554f66a/SEIJR_plot_size.png)

*Figure 1: Cumulative estimated infections through time. Points represent reported cases in NSW. The dashed line indicates the date of last sample in NSW in this analysis.*


* Estimated cumulative infections at last sample (2020-03-17): **3604 [1374-12429]** median [95%CI]

* Cumulative confirmed infections reported at 2020-03-17: **210**  

<!-- * Cumulative number of active infections at 2020-03-17:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200409-105450-f554f66a/Daily.png)

*Figure 2: Daily estimated infections through time. Points represent reported cases in NSW. The dashed line indicates the date of last sample in NSW in this analysis.*





![plot of chunk Rt]({{ site.url }}/assets/20200409-105450-f554f66a/Rt.png)

*Figure 3: Reproduction number through time. The dashed line indicates the date of last sample in NSW in this analysis.*

Reproduction number at last sample (2020-03-17): **1.8 [1.56-2.17]** median [95% CrI]


## How quickly has the epidemic in NSW grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        1.81         |        0.0875         |         7.92         |
|   2.5%   |        1.56         |        0.0629         |         5.69         |
|  97.5%   |         2.2         |         0.122         |          11          |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in NSW?



![plot of chunk mcc_tree]({{ site.url }}/assets/20200409-105450-f554f66a/mcc.png)

*Figure 4: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within NSW, blue tips from outside.*



##### Molecular clock rate of evolution: **0.00168 [0.00131-0.0021]** median [95% CrI]  

<!-- #### (optional) Number of introductions into NSW (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200409-105450-f554f66a/cumu_inf_exp_model.png)

*Figure 5: Cumulative estimated infections. The dashed line indicates the date of last sample in NSW in this analysis. The points represent reported cases in NSW.*

Based on an estimated growth rate of 0.0875 [0.0629 - 0.122] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-03-17) as: 1005 [140 - 9061]

We estimate number of infections at 2020-03-31 (14 days after last sample) as:
3470 [375 - 46233]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).


Model version: seijr0.1.0

Report version: 20200409-105450-f554f66a


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


