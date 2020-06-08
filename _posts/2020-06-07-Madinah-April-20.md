---
title: "Phylodynamic Analysis: Madinah (Medina): 2020-04-20 "
date: June 07, 2020
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

### Report prepared on 2020-06-07

#### This report uses full genome sequence data for Madinah shared publicly by the [Pathogen Genomics Lab at the King Abdullah University of Science and Technology](https://pgl.kaust.edu.sa/). International background sequences included in the analsis are from [GISAID](http://www.epicov.org) ([contributing laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls)).



## Key points
* This is a preliminary analysis based on a small number of genomes sampled from Madinah. **The estimates made here are subject to change with the inclusion of further genetic data.**
* With the available data we estimate a basic reproduction number (R0) of 1.97 with an estimated effective reproduction number (Rt) of 1.51 at the time of the last sample (2020-04-20). We make an out of sample prediction of continued decrease in Rt shown in figure 5. This trajectory is likely to change with the inclusion of further genetic data from Madinah. 


#### This is analysis is based on : 
  
* **19 whole genomes** sampled from **within Madinah**
* **70 whole genomes** sampled from outside of **Madinah**
* Samples within Madinah were collected between **2020-03-29** and **2020-04-20**

As duplicate sequences and those with likely sequencing errors or significant gaps were removed prior to analysis this represents a smaller sample than the total number of Madinah samples uploaded to gisaid. Figure 1 shows the distribution of the included sequences over time, including external sequences.

Reported cases for comparison to our model predictions are taken from [covid19.moh.gov.sa](covid19.moh.gov.sa) fro the Al Madinah al Munawwarah region. These data are used for comparison purposes only and do not influence the phylodynamic analyses.

![plot of chunk sampling dist]({{ site.url }}/assets/20200607-213403-ab612274/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## Estimated infections in Madinah

In this preliminary analysis we estimate **10612 [1807-74190]** (median [95%CI]) cumulative infections at the time of the last sample (2020-04-20). At the same time point there were **2008** reported cases. The start of the epidemic in the model was aligned to the first reported cases in Saudi Arabia and is ahead of the first reported cases in Madinah. Future implementations of the model will allow this start point to vary.


![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200607-213403-ab612274/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200607-213403-ab612274/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Madinah. The dashed line indicates the date of last sample in Madinah in this analysis.*




![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200607-213403-ab612274/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200607-213403-ab612274/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Madinah. The dashed line indicates the date of last sample in Madinah in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200607-213403-ab612274/reporting.png)

*Figure 4: Estimated percentage of cases reported in Madinah. Error bars represent the 95% credible interval.*

We estimate approximately 25% of cases in Madinah have been reported although this estimate has wide confidence intervals and should be interpreted with caution. Estimated reporting rates for the state of Saudi Arabia from other sources are much higher with [Russell et al. estimating 87% from comparison of fatality data to the number of reported cases](https://cmmid.github.io/topics/covid19/global_cfr_estimates.html). Our reporting rate estimates are likely to change with a longer time series of genetic data.

![plot of chunk Rt]({{ site.url }}/assets/20200607-213403-ab612274/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Madinah in this analysis. *

Reproduction number at last sample (2020-04-20): **1.51 [0.273-1.92]** median [95% CrI]

An out of sample prediction of Rt to the time of the last international sample included in this analysis (2020-05-20) shows an estimated continued decrease in Rt below 1 in Medinah. As this prediction is fitted only on international data it should be interpreted with caution.


## How quickly has the epidemic in Madinah grown?



| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        1.97         |         0.102         |         6.83         |
|   2.5%   |        1.49         |        0.0557         |         3.76         |
|  97.5%   |        2.98         |         0.184         |         12.4         |

Table: Reproduction number, growth rate and doubling times




## How has SARS-CoV 2 evolved in Madinah?


![plot of chunk ml_tree]({{ site.url }}/assets/20200607-213403-ab612274/MLtree.png){:width="450px"}

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200607-213403-ab612274/mcc2.png){:width="450px"}

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to sampling location; red tips were sampled from within Madinah.*

We present a time-scaled phylogeny for the sequence data from Madinah and the international reservoir. Clustering of sequences from Madinah is varied.  Figure 7 shows clusters of local sequences at two disparate points in the phylogeny together with sequences clustered with those from other international reservoir regions. This suggests a number of independent introductions of SARS-CoV2 in to Madinah with internal transmission associated with some of these importation events. As support for internal nodes in the time scaled phylogeny is variable we have included a maximum likelihood tree showing the genetic relationship between sequences in figure 6.


##### Molecular clock rate of evolution: **0.000661 [0.000511-0.000889]** median [95% CrI]  


## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).






|      Statistic      |   mean    |  ESS  |
|:-------------------:|:---------:|:-----:|
|      posterior      |  -42402   |  357  |
|     likelihood      |  -42298   | 4460  |
|        prior        |  -103.1   |  323  |
| treeLikelihood.algn |  -42298   | 4460  |
|     TreeHeight      |  0.4563   |  348  |
|      clockRate      | 0.0006694 |  531  |
|        kappa        |   5.013   | 35682 |
|     PhydynSEIR      |    -72    |  325  |
|       seir.E        |   38.41   |  563  |
|       seir.S        |  100676   | 14538 |
|       seir.b        |   15.68   | 1292  |
|      seir.exog      |  0.01889  |  973  |
| seir.exogGrowthRate |   25.29   |  185  |
|   seir.importRate   |   2.241   | 1044  |
|      seir.p_h       |  0.2082   | 20843 |
|      seir.tau       |   73.21   | 41119 |
|   freqParameter.1   |   0.298   | 14066 |
|   freqParameter.2   |  0.1825   | 14744 |
|   freqParameter.3   |  0.1951   | 14174 |
|   freqParameter.4   |  0.3245   | 14094 |


Table: Effective sample size of model parameters




Model version: seijr_0.1.1_coupled

Report version: 20200607-213403-ab612274


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


