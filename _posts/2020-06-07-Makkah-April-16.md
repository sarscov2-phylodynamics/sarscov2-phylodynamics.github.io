---
title: "Phylodynamic Analysis: Makkah (Mecca): 2020-04-16 "
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
* This is a preliminary analysis, predictions are subject to change with further genetic data covering a longer time period. Out of sample predictions are made using data from the international reservoir and may not reflect local changes over the same time period.
* In this analysis we predict a basic reproduction number (R0) for Makkah of 1.72, with the effective reproduction number (Rt) falling to 1.52 at the time of the last sample (2020-04-16). Out of sample prediction using international SARS-CoV2 data shows Rt continuing to decline following the last reported sample (Figure 5). The trajectory of this curve is likely to change with the inclusion of more recent internal sequence data.
* We estimate that approximately 70% of SARS-CoV2 cases in Makkah have been reported over the course of the epidemic.



#### This is analysis is based on : 
  
* **34 whole genomes** sampled from **within Makkah**
* **72 whole genomes** sampled from outside of **Makkah**
* Samples within Makkah were collected between **2020-03-22** and **2020-04-16**

As duplicate sequences and those with likely sequencing errors or significant gaps were removed prior to analysis this represents a smaller sample than the total number of Makkah samples uploaded to gisaid. Figure 1 shows the distribution of the included sequences over time, including external sequences.

Reported cases for comparison to our model predictions are taken from [covid19.moh.gov.sa](covid19.moh.gov.sa) for the Makkah al Mukarramah region. These data are used for comparison purposes only and do not influence the phylodynamic analyses.

![plot of chunk sampling dist]({{ site.url }}/assets/20200607-203557-f824070b/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## Estimated infections in Makkah

In this preliminary analysis we estimate **3623 [1107-17213]** (median [95%CI]) cumulative infections at the time of the last sample (2020-04-20). At the same time point there were **1584** reported cases. The number of cases reported falls within the 95% credible interval for the number of cases predicted by the model.


![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200607-203557-f824070b/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200607-203557-f824070b/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Makkah. The dashed line indicates the date of last sample in Makkah in this analysis.*


![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200607-203557-f824070b/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200607-203557-f824070b/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Makkah. The dashed line indicates the date of last sample in Makkah in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200607-203557-f824070b/reporting.png)

*Figure 4: Estimated percentage of cases reported in Makkah. Error bars represent the 95% credible interval.*

We estimate approximately 70% of cases occuring in Makkah have been reported. Estimated reporting rates for the Kingdom of Saudi Arabia from other sources are higher with [Russell et al. estimating 87% from comparison of fatality data to the number of reported cases](https://cmmid.github.io/topics/covid19/global_cfr_estimates.html). Our reporting rate estimates are likely to change with a longer time series of genetic data.

![plot of chunk Rt]({{ site.url }}/assets/20200607-203557-f824070b/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Makkah in this analysis. *

Reproduction number at last sample (2020-04-16): **1.54 [1.01-1.88]** median [95% CrI]


## How quickly has the epidemic in Makkah grown?


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        1.72         |        0.0785         |         8.83         |
|   2.5%   |        1.31         |        0.0365         |         5.56         |
|  97.5%   |        2.23         |         0.125         |          19          |

Table: Reproduction number, growth rate and doubling times







## How has SARS-CoV 2 evolved in Makkah?


![plot of chunk ml_tree]({{ site.url }}/assets/20200607-203557-f824070b/MLtree.png)

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within Makkah, grey tips from outside.*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200607-203557-f824070b/mcc.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Makkah.*

We present a time-scaled phylogeny for the sequence data from Makkah and the international reservoir. The majority of sequenced genomes from Makkah fall in to two distinct clusters of internal transmission with further introductions of virus not leading to onwards transmission. The sequences from Makkah are predominantly associated with sequence data from Europe and the Americas, although the majority of reported sequence data comes from these regions so this association may be heavily influenced by reporting biases. As support for internal nodes in the time scaled phylogeny is variable we have included a maximum likelihood tree showing the genetic relationship between sequences in figure 6.



##### Molecular clock rate of evolution: **0.00101 [0.000658-0.00127]** median [95% CrI]  

## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).



|      Statistic      |   mean    |  ESS  |
|:-------------------:|:---------:|:-----:|
|      posterior      |  -43231   |  237  |
|     likelihood      |  -43124   | 4005  |
|        prior        |   -107    |  233  |
| treeLikelihood.algn |  -43124   | 4005  |
|     TreeHeight      |  0.3982   |  346  |
|      clockRate      | 0.0009941 |  482  |
|        kappa        |   5.887   | 30445 |
|     PhydynSEIR      |  -75.67   |  237  |
|       seir.E        |   44.16   |  308  |
|       seir.S        |   96013   | 10421 |
|       seir.b        |   13.63   | 3768  |
|      seir.exog      | 0.008481  | 1065  |
| seir.exogGrowthRate |   26.05   |  152  |
|   seir.importRate   |   3.506   |  598  |
|      seir.p_h       |  0.2067   | 17354 |
|      seir.tau       |   72.16   | 23110 |
|   freqParameter.1   |  0.2974   | 8748  |
|   freqParameter.2   |  0.1822   | 11082 |
|   freqParameter.3   |  0.1953   | 10828 |
|   freqParameter.4   |  0.3251   | 10951 |


Table: Effective sample size of model parameters




Model version: seijr_0.1.1_coupled

Report version: 20200607-203557-f824070b


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


