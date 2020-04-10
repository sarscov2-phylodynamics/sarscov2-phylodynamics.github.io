---
title: "Phylodynamic Analysis: Weifang,: 2020-02-10 "
date: April 09, 2020
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










### Report author: Lily Geidelberg

### Authors: Erik M Volz, Han Fu 1 , Haowei Wang 1 , Xiaoyue Xi 2 , Wei Chen 3 , Dehui Liu 3 , Yingying Chen 3 , Mengmeng Tian 3 , Wei Tan 4 , Junjie Zai 5 , Wanying Sun 6 , Jiandong Li 6 , Junhua Li 6 , Xingguang Li 7, Qing Nie 3**

  1. Department of Infectious Disease Epidemiology and MRC Centre for Global Infectious Disease Analysis, Imperial College London,2.Department of Mathematics, Imperial College London,3. Department of Microbiology, Weifang Center for Disease Control and Prevention, Weifang, 4. Department of Respiratory Medicine, Weifang People's Hospital, Weifang, 5. Immunology Innovation Team, School of Medicine, Ningbo University, Ningbo,6. Shenzhen Key Laboratory of Unknown Pathogen Identification, BGI-Shenzhen, Shenzhen, 7. Hubei Engineering Research Center of Viral Vector, Wuhan University of Bioengineering, Wuhan, China


### Primary author: Lily Geidelberg

### Report prepared on 2020-04-09



## Background information  




#### This is analysis is based on : 
  
* **20 whole genomes** sampled from **within Weifang**
* **50 whole genomes** sampled from outside of **Weifang**
* Samples within Weifang were collected between **2020-01-24** and **2020-02-10**


<!-- ##### To add: [optional plot of sample distribution through time] -->



## How many are infected in Weifang?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200409-105433-91378a08/SEIJR_plot_size.png)

*Figure 1: Cumulative estimated infections through time. Points represent reported cases in Weifang. The dashed line indicates the date of last sample in Weifang in this analysis.*


* Estimated cumulative infections at last sample (2020-02-10): **223 [38-827]** median [95%CI]

* Cumulative confirmed infections reported at 2020-02-10: **38**  

<!-- * Cumulative number of active infections at 2020-02-10:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200409-105433-91378a08/Daily.png)

*Figure 2: Daily estimated infections through time. Points represent reported cases in Weifang. The dashed line indicates the date of last sample in Weifang in this analysis.*





![plot of chunk Rt]({{ site.url }}/assets/20200409-105433-91378a08/Rt.png)

*Figure 3: Reproduction number through time. The dashed line indicates the date of last sample in Weifang in this analysis.*

Reproduction number at last sample (2020-02-10): **0.0911 [0.0129-0.532]** median [95% CrI]


## How quickly has the epidemic in Weifang grown?




| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        3.12         |         0.194         |         3.57         |
|   2.5%   |        1.81         |        0.0871         |         2.3          |
|  97.5%   |        4.79         |         0.301         |         7.96         |

Table 1: Reproduction number, growth rate and doubling times







## How has SARS-CoV 2 evolved in Weifang?



![plot of chunk mcc_tree]({{ site.url }}/assets/20200409-105433-91378a08/mcc.png)

*Figure 4: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Weifang, blue tips from outside.*



##### Molecular clock rate of evolution: **0.0012 [0.000874-0.00163]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Weifang (someone needs to write code to compute this) -->






## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).


Model version: seijr0.0.0

Report version: 20200409-105433-91378a08


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


