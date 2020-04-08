---
title: "Phylodynamic Analysis: Hong Kong, 2020-03-14"
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






# Location: Hong Kong
# Most recent sample: 2020-03-14


### Primary author: Manon Ragonnet

### Report prepared on 2020-04-07

#### On behalf of the MRC GIDA COVID-19 phylodynamics working group at Imperial College London: Lily Geidelberg, Olivia Boyd, Manon Ragonnet, David Jorgensen,  Igor Siveroni, Erik Volz




## Background information  




#### This is analysis is based on : 
  
* **27 whole genomes** sampled from **within Hongkong**
* **43 whole genomes** sampled from outside of **Hongkong**
* Samples were collected between **2020-01-21** and **2020-03-14**


## How many are infected in Hong Kong?


* Estimated cumulative infections at last sample (2020-03-14): **432 [35-21603]** median [95%CI]

* Cumulative confirmed infections reported at 2020-03-14: 
**141**  



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200407-224313-c37a4344/Daily.png)

*Figure 1: Daily estimated infections through time. Points represent reported cases in Hongkong. The dashed line indicates the date of last sample in Hong Kong in this analysis.*



## How quickly has the epidemic in Hongkong grown?


Reproduction number at last sample (2020-03-14): **3.59 [2.6-4.71]** median [95% CrI]




 
 
 | Quantile | Reproduction number | Growth rate (per day) |Doubling time (days) |
 |:--------:|:-------------------:|:---------------------:|:--------------------:|
 |   50%    |        3.65         |         0.231         |          3           |
 |   2.5%   |        2.78         |         0.169         |        2.17         |
 |  97.5%   |        5.09         |         0.320         |         4.1          |
 
 Table 1: Reproduction number, growth rate and doubling times (continued below)
 
  




## How has SARS-CoV 2 evolved in Hongkong?



![plot of chunk mcc_tree]({{ site.url }}/assets/20200407-224313-c37a4344/mcc.png)

*Figure 2: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Hongkong, blue tips from outside.*



##### Molecular clock rate of evolution: **0.000657 [0.000511-0.000932]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Hongkong (someone needs to write code to compute this) -->





## Methods summary

Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).

Model version: seijr0.0.0

Report version: 20200407-224313-c37a4344


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


