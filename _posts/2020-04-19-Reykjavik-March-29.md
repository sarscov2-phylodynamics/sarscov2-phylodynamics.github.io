---
title: "Phylodynamic Analysis: Reykjavik: 2020-03-29 "
date: April 19, 2020
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








### Primary author: David Jorgensen

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-04-19





## Background information  




#### This is analysis is based on : 
  
* **42 whole genomes** sampled from **within Reykjavik**
* **78 whole genomes** sampled from outside of **Reykjavik**
* Samples within Reykjavik were collected between **2020-03-03** and **2020-03-29**

These numbers will differ from the number of uploaded sequences as we remove sequences with likely sequencing errors or significant gaps. Sequences were deduplicated and downsampled prior to analysis. Icelandic sequences included in this analysis were uploaded to [gisaid](gisaid.org) on or before 2020-04-13.



## How many are infected in Reykjavik?

Using a phylodynamic model we estimate epidemiological parameters using SARS CoV 2 sequence data from Reykjavik together with a background set of sequences sampled from the larger internationational viral population. [the model is explained in detail here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf). Reported cases are extracted from [covid.is](http://covid.is), the SARSCoV-2 website of The Directorate of Health and The Department of Civil Protection and Emergency Management of Iceland.



![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200419-105308-5839009f/SEIJR_plot_size.png){:width="70%" }


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200419-105308-5839009f/SEIJR_plot_size_log.png){:width="70%" }


*Figure 1: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Reykjavik. The dashed line indicates the date of last sample in Reykjavik in this analysis.*


* Estimated cumulative infections at last sample (2020-03-29): **4922 [901-30572]** median [95%CI]

* Cumulative confirmed infections reported at 2020-03-29: **798**  

<!-- * Cumulative number of active infections at 2020-03-29:   -->

![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200419-105308-5839009f/Daily.png){:width="70%" }


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200419-105308-5839009f/Daily_log.png){:width="70%" }


*Figure 2: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Reykjavik. The dashed line indicates the date of last sample in Reykjavik in this analysis.*



<!--remake this one-->
![plot of chunk reporting]({{ site.url }}/assets/20200419-105308-5839009f/reporting.png){:width="70%" }

*Figure 3: Estimated percentage of daily cases reported in Reykjavik. Error bars represent the 95% credible interval.*

Iceland has had a high testing rate throughout the SARSCoV2 outbreak although recent testing rates have been lower due to a [shortage of testing kits](https://www.ruv.is/frett/pinnasending-til-islands-skorin-nidur-um-3000) which may affect recent reporting rates.

<!--
Our estimates of effective reproduction number over time (Rt) based on genetic data support reduced transmission over time following the introduction of quarantine for those returning to Iceland and later closure of borders to non-EU arrivals and social distancing measures (Figure 4).
EV: probably need more sequence data to conclude this 
--> 


![plot of chunk Rt]({{ site.url }}/assets/20200419-105308-5839009f/Rt.png){:width="70%" }

*Figure 4: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Reykjavik in this analysis. Red and blue dashed lines indicate dates of border closure and a ban on large gatherings in Iceland respectively.*

Reproduction number at last sample (2020-03-29): **2.44 [1.8-2.82]** median [95% CrI]


## How quickly has the epidemic in Reykjavik grown?





| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.63         |         0.157         |         4.41         |
|   2.5%   |        1.92         |        0.0972         |         2.98         |
|  97.5%   |        3.67         |         0.232         |         7.13         |

Table 1: Reproduction number, growth rate and doubling times







## How has SARS-CoV 2 evolved in Reykjavik?


![plot of ML_Tree]({{ site.url }}/assets/20200419-105308-5839009f/MLtree.png){:width="400px"}

*Figure 5: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200419-105308-5839009f/mcc2.png){:width="400px"}

*Figure 6: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Reykjavik.*




##### Molecular clock rate of evolution: **0.00118 [0.00092-0.00148]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Reykjavik (someone needs to write code to compute this) -->



## Methods summary

Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).

Based on 6 chains of 10 million iterations with 50% burnin. [Effective sample size values]({{ site.url }}/assets/20200419-105308-5839009f/ESS.txt)

Model version: seijr0.1.0

Report version: 20200419-105308-5839009f


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


