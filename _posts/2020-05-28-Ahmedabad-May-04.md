---
title: "Phylodynamic Analysis: Ahmedabad - Gujarat: 2020-05-04 "
date: May 28, 2020
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

### Report prepared on 2020-05-28

##### This report uses full genome sequence data shard publicly by [Gujarat Biotechnology Research Centre](gbrc.gujarat.gov.in) and a set of international background sequences from [GISAID](http://www.epicov.org) ([laboratory acknowledgements](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls))



## Key points
* [A preliminary analysis on Gujarat](http://sarscov2phylodynamics.org/2020/05/18/Gujarat-May-04.html) was previously published on the blog. As more sequence data is now available we are able to focus on Ahmedabad, the largest city and main focal point of SARS-CoV 2 transmission in Gujarat. Future updates will be at this scale. This analysis is still preliminary and based on a small number of sequences from a large, densely populated city.
* We estimate a similar initial R (R0) for Ahmedabad as previously estimated for the state of Gujarat at approximately 2. As before we estimate a modest decline in R over time with available sequence data. 



#### This is analysis is based on : 
  
* **44 whole genomes** sampled from **within Ahmedabad**
* **51 whole genomes** sampled from outside of **Ahmedabad**
* Samples within Ahmedabad were collected between **2020-04-07** and **2020-05-04**

As duplicate sequences, those with likely sequencing errors or significant gaps were removed prior to analysis this represents a smaller sample than the total number of Ahmedabad samples uploaded to gisaid. Figure 1 shows the distribution of the included sequences over time, including external sequences.

Reported cases for comparison to our model predictions are taken from [covid19india.org](https://www.covid19india.org/), a crowdsourced database for SARS-CoV-2 data from India and so may not match reported cases from government sources exactly. These data are used for comparison purposes only and do not influence the analysis. As district level data from the covid19india API were available only for the past month, case numbers for Ahmedabad were estimated to be 2/3 of the cases from the state as a whole at all time points. This fits with current reporting but is likely to be inaccurate back in time and will be updated when adequate district level data is sourced.


![plot of chunk sampling dist]({{ site.url }}/assets/20200528-112517-95f05a03/sample_distribution.png){:width="70%"}

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in Ahmedabad?

In this analysis we estimate **12572 [3270-60827]** median [95%CI] cumulative infections at the time of the last sample (2020-05-04) by fitting a phylodynamic model to SARS-CoV 2 sequence data. We estimate 3482 reported cases of SARS-CoV 2 in Ahmedabad at the same time point. This is similar to the number of cases estimated for the state of Gujarat in the previous analysis, demonstrating the influence of additional sequence data on this estimate and the importance of Ahmedabad to coronavirus transmission in Gujarat. Epidemiological modelling by other groups suggests a lower reporting rate for coronavirus than estimated in this analysis suggesting it is likely still limited by the depth of available sequence data.


![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200528-112517-95f05a03/SEIJR_plot_size.png){:width="70%"}


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200528-112517-95f05a03/SEIJR_plot_size_log.png){:width="70%"}


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Ahmedabad. The dashed line indicates the date of last sample in Ahmedabad in this analysis.*




![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200528-112517-95f05a03/Daily.png){:width="70%"}


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200528-112517-95f05a03/Daily_log.png){:width="70%"}


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Ahmedabad. The dashed line indicates the date of last sample in Ahmedabad in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200528-112517-95f05a03/reporting.png){:width="70%"}

*Figure 4: Estimated percentage of daily cases reported in Ahmedabad. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200528-112517-95f05a03/Rt.png){:width="70%"}

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Ahmedabad in this analysis. The red dashed line indicates the date of lockdown in India. *

Reproduction number at last sample (2020-05-04): **1.65 [2.05-0.61]** median [95% CrI]


## How quickly has the epidemic in Ahmedabad grown?



| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.07         |         0.111         |         6.25         |
|   2.5%   |        1.65         |        0.0719         |         4.34         |
|  97.5%   |        2.66         |         0.160         |         9.64         |

Table: Reproduction number, growth rate and doubling times



## How has SARS-CoV 2 evolved in Ahmedabad?


![plot of chunk ml_tree]({{ site.url }}/assets/20200528-112517-95f05a03/MLtree.png){:width="400px"}

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200528-112517-95f05a03/mcc2.png){:width="400px"}

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to sampling location; red tips were sampled from within Ahmedabad.*

We present here a time scaled phylogeny of SARS-CoV-2 in Ahmedabad and the included international reservoir. As few nodes have high posterior support we also present a maximum likelhood phylogeny showing genetic distance between the included sequences. Ahmedabad sequences tend to cluster closely together suggesting that the majority of sequenced SARS-CoV-2 results from transmission within the region rather than introductions from elsewhere. This could be the result of significant local transmission or due to a local sampling strategy targeted at interconnected individuals.

##### Molecular clock rate of evolution: **0.000966 [0.000735-0.00126]** median [95% CrI]  

## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).



|      Statistic      |   mean    | ESS  |
|:-------------------:|:---------:|:----:|
|      posterior      |  -43182   | 183  |
|     likelihood      |  -43077   | 315  |
|        prior        |  -104.6   | 122  |
| treeLikelihood.algn |  -43077   | 315  |
|     TreeHeight      |  0.3571   | 118  |
|      clockRate      | 0.0009742 | 391  |
|        kappa        |   3.957   | 5874 |
|     PhydynSEIR      |  -73.65   | 133  |
|       seir.E        |   43.22   | 1733 |
|       seir.S        |  107492   | 2252 |
|       seir.b        |   15.83   | 2236 |
|      seir.exog      | 0.006659  | 276  |
| seir.exogGrowthRate |   27.22   |  37  |
|   seir.importRate   |   3.338   | 2968 |
|      seir.p_h       |  0.2124   | 4107 |
|      seir.tau       |   73.49   | 7567 |
|   freqParameter.1   |  0.2975   | 2335 |
|   freqParameter.2   |  0.1825   | 2389 |
|   freqParameter.3   |  0.1949   | 2187 |
|   freqParameter.4   |  0.3252   | 2027 |
|       gamma0        |    73     |  NA  |
|       gamma1        |   121.7   |  8   |

Table: Effective sample size of model parameters




Model version: seijr_0.1.1_coupled

Report version: 20200528-112517-95f05a03


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


