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
title: "Phylodynamic Analysis: Washington,: 2020-03-26 "
date: April 20, 2020
---





### Primary author: Manon Ragonnet and Erik Volz

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-04-20





## Background information  




#### This is analysis is based on : 
  
* **152 whole genomes** sampled from **within Washington**
* **68 whole genomes** sampled from outside of **Washington**
* Samples within Washington were collected between **2020-02-26** and **2020-03-26**


<!-- ##### To add: [optional plot of sample distribution through time] -->



## How many are infected in Washington?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200420-230114-2d0c42b0/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200420-230114-2d0c42b0/SEIJR_plot_size_log.png)


*Figure 1: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Washington. The dashed line indicates the date of last sample in Washington in this analysis.*


* Estimated cumulative infections at last sample (2020-03-26): **12726 [3899-71563]** median [95%CI]

* Cumulative confirmed infections reported at 2020-03-26: **3745**  

<!-- * Cumulative number of active infections at 2020-03-26:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200420-230114-2d0c42b0/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200420-230114-2d0c42b0/Daily_log.png)


*Figure 2: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Washington. The dashed line indicates the date of last sample in Washington in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200420-230114-2d0c42b0/reporting.png)

*Figure 3: Estimated percentage of daily cases reported in Washington. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200420-230114-2d0c42b0/Rt.png)

*Figure 4: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Washington in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in Washington, respectively. *

Reproduction number at last sample (2020-03-26): **2.5 [0.94-3.02]** median [95% CrI]


## How quickly has the epidemic in Washington grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.71         |         0.164         |         4.24         |
|   2.5%   |        2.27         |         0.128         |         3.33         |
|  97.5%   |        3.31         |         0.208         |         5.42         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in Washington?


## *[placeholder for ML tree]*

*Figure 5: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200420-230114-2d0c42b0/mcc.png)

*Figure 6: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Washington, blue tips from outside.*




##### Molecular clock rate of evolution: **0.00167 [0.00119-0.00247]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Washington (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200420-230114-2d0c42b0/cumu_inf_exp_model.png)

*Figure 7: Cumulative estimated infections. The dashed line indicates the date of last sample in Washington in this analysis. The points represent reported cases in Washington.*

Based on an estimated growth rate of 0.164 [0.128 - 0.208] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-03-26) as: NA [NA - NA]

We estimate number of infections at 2020-03-15 (-11 days after last sample) as:
10816 [2174 - 65460]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).


Model version: seijr0.0.0

Report version: 20200420-230114-2d0c42b0


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


