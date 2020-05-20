---
title: "Phylodynamic Analysis: Denmark: 2020-04-04 "
date: May 18, 2020
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

### Report prepared on 2020-05-18

#### Key points
* We estimate an initial reproduction number (R0) of 2.39, falling to 1.62 [0.544-2.2] at the time of the last internal sample (2020-04-04). Initial R0 is likely higher in reality as the number of reported cases exceeds the prediction in mid-march.
* As external samples from the international reservoir continue to 2020-04-30 we also make out of sample predictions showing continued decrease in Rt in Denmark over this period.
* Sequence data from Denmark are spread across the phylogenetic tree suggesting a number of independent introductions. These cluster predominantly with sequence data from other european countries.


#### This is analysis is based on : 
  
* **92 whole genomes** sampled from **within Denmark**
* **65 whole genomes** sampled from outside of **Denmark**
* Samples within Denmark were collected between **2020-02-26** and **2020-04-04**

The number of internal sequences will differ from the number of uploaded sequences as identical sequences have been removed alongside sequences with likely sequencing errors or significant gaps.

![plot of chunk sampling dist]({{ site.url }}/assets/20200518-115643-3e758133/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in Denmark?

Using a [phylodynamic model](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls) we estimate epidemiological parameters using SARS CoV 2 sequence data from Luxembourg together with a background set of sequences sampled from the larger internationational viral population. Reported case numbers used for comparison were compiled by the [Statens Serum Institut](https://en.ssi.dk/). From this model we estimate **7229 [2300-22942]** median [95%CI] cumulative infections at the time of the last sample (2020-04-04). There were **4651** confirmed infections at the same time point.




![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200518-115643-3e758133/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200518-115643-3e758133/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Gold points represent reported cases in Denmark. The dashed line indicates the date of last sample in Denmark in this analysis.*



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200518-115643-3e758133/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200518-115643-3e758133/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Gold points represent reported cases in Denmark. The dashed line indicates the date of last sample in Denmark in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200518-115643-3e758133/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in Denmark. Error bars represent the 95% credible interval.*

Reported cases in Denmark prior to the lockdown are higher than the numbers predicted by the model. Changing dynamics over time may be better represented with a piecewise model.

![plot of chunk Rt]({{ site.url }}/assets/20200518-115643-3e758133/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Denmark in this analysis. The red dashed line shows the date of lockdown in Denmark. *

Reproduction number at last sample (2020-04-04): **1.62 [0.544-2.2]** median [95% CrI]


## How quickly has the epidemic in Denmark grown?


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.39         |         0.138         |         5.04         |
|   2.5%   |        1.82         |        0.0879         |         3.58         |
|  97.5%   |        3.11         |         0.194         |         7.88         |

Table: Reproduction number, growth rate and doubling times




## How has SARS-CoV 2 evolved in Denmark?
The following 2 figures present phylogenetic trees of SARS-CoV-2 with sequences sampled in Denmark shown in red. As there is low support for a number of internal nodes in the time resolved tree estimated alongside the phylodynamic model we present a maximum likelihood tree for comparison.

![plot of chunk ml tree]({{ site.url }}/assets/20200518-115643-3e758133/MLtree.png)

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200518-115643-3e758133/mcc2.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Denmark, blue tips from outside.*




##### Molecular clock rate of evolution: **0.00105 [0.000851-0.00128]** median [95% CrI]  


## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```
|      Statistic      |   mean    | ESS  |
|:-------------------:|:---------:|:----:|
|      posterior      |  -42821   |  92  |
|     likelihood      |  -42717   | 505  |
|        prior        |  -103.7   |  80  |
| treeLikelihood.algn |  -42717   | 505  |
|     TreeHeight      |  0.3149   |  56  |
|      clockRate      | 0.001057  | 521  |
|        kappa        |   6.905   | 3248 |
|     PhydynSEIR      |   -72.1   | 173  |
|       seir.E        |   48.07   | 387  |
|       seir.S        |   50536   | 886  |
|       seir.b        |   17.46   | 575  |
|      seir.exog      | 0.0008782 | 124  |
| seir.exogGrowthRate |   27.84   |  19  |
|   seir.importRate   |   2.227   | 569  |
|      seir.p_h       |  0.2212   | 1573 |
|      seir.tau       |   73.93   | 1396 |
|   freqParameter.1   |   0.298   | 1418 |
|   freqParameter.2   |  0.1824   | 1582 |
|   freqParameter.3   |  0.1948   | 1223 |
|   freqParameter.4   |  0.3248   | 1462 |
|       gamma0        |    73     |  NA  |
|       gamma1        |   121.7   |  5   |

Table: Effective sample size of model parameters
```



Model version: seijr_0.1.1_coupled

Report version: 20200518-115643-3e758133


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


