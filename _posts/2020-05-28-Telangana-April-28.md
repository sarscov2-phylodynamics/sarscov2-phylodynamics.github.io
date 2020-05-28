---
title: "Phylodynamic Analysis: Telangana,: 2020-04-28 "
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

#### This report uses full genome sequence data for Telangana shard publicly by [Centre for Cellular & Molecular Biology](ccmb.res.in) and [Gandhi Medical College](https://www.gandhihospital.in/) and a set of international background sequences from [GISAID](http://www.epicov.org) ([laboratory acknowledgements](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls))




## Key points
* We estimate a number of key epidemiological parameters for Telangana based on the genetic diversity of these samples alongside a set of closely related sequences from elsewhere which act as a global reservoir.
* In this preliminary analysis we estimate a basic reproduction number (R0) of 3.19 in Telangana with R falling below 1 by the time of the last available sequence data at the end of April.
* We estimate a low reporting rate in Telangana with a median estimate from the phylodynamic model of 73849 cases at the end of April compared to 1009 reported cases at the same time point.




#### This is analysis is based on : 
  
* **39 whole genomes** sampled from **within Telangana**
* **51 whole genomes** sampled from outside of **Telangana**
* Samples within Telangana were collected between **2020-02-04** and **2020-04-28**

As duplicate sequences and those with likely sequencing errors or significant gaps were removed prior to analysis this represents a smaller sample than the total number of Telangana samples uploaded to gisaid. Figure 1 shows the distribution of the included sequences over time, including external sequences. 

Reported cases for comparison to our model predictions are taken from [covid19india.org](covid19india.org), a crowdsourced database for SARS-CoV-2 data from India and so may not match reported cases from government sources exactly. These data are used for comparison purposes and to estimate the reporting rate and do not influence the phylodynamic analysis.

![plot of chunk sampling dist]({{ site.url }}/assets/20200528-153636-b3e93655/sample_distribution.png)

*Figure 1: Sampling distribution over time of number of sequences included within the region versus sequences included from the international reservoir.*


## Estimated infections?
In this preliminary analysis we estimate **73849 [10396-129336]** median [95%CI] cumulative infections at the time of the the last sample (2020-04-28). At the same time point there were **1009** reported cases. The estimates follow a similar trajectory to the reported cases at a different magnitude. The peak in daily infections in the model lags the peak in reported cases with a later start to the downwards trajectory in cases. This fit will likely improve with further sequence data but may also be improved with a piecewise estimate of R(t) which can fit more dramatic changes in incidence than the current smoothed estimate.


![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200528-153636-b3e93655/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200528-153636-b3e93655/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Telangana. The dashed line indicates the date of last sample in Telangana in this analysis.*


* Estimated cumulative infections at last sample (2020-04-28): **73849 [10396-129336]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-28: **1009**  



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200528-153636-b3e93655/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200528-153636-b3e93655/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Points represent reported cases in Telangana. The dashed line indicates the date of last sample in Telangana in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200528-153636-b3e93655/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in Telangana. Error bars represent the 95% credible interval.*


![plot of chunk Rt]({{ site.url }}/assets/20200528-153636-b3e93655/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Telangana in this analysis. The red dashed vertical line represents the date of lockdown in India.*

Reproduction number at last sample (2020-04-28): **0.391 [0.0501-1.75]** median [95% CrI]


## How quickly has the epidemic in Telangana grown?




| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        3.19         |         0.199         |         3.48         |
|   2.5%   |        1.97         |         0.102         |         2.32         |
|  97.5%   |        4.72         |         0.298         |         6.78         |

Table: Reproduction number, growth rate and doubling times

the R0 and R(t) estimates presented here are broadly in line with estimates produced by other groups using only epidemiological data. 




## How has SARS-CoV 2 evolved in Telangana?


![plot of chunk ml_tree]({{ site.url }}/assets/20200528-153636-b3e93655/MLtree.png)

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200528-153636-b3e93655/mcc2.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Telangana, blue tips from outside.*

We present a time scaled phylogeny of SARS-CoV-2 in Telangana and the included international reservoir. As few internal nodes have high posterior support we also present a maximum likelhood phylogeny showing genetic distance between the included sequences. Telangana sequences tend to cluster closely together suggesting that the majority of sequenced SARS-CoV-2 results from transmission within the region rather than introductions from elsewhere. This is in keeping with the timing of the epidemic in India which follows the introduction of social distancing measures in most other heavily affected regions but may also represent targeted sampling strategies, such as contact tracing, in the sampled genetic data.


##### Molecular clock rate of evolution: **0.00174 [0.00136-0.00214]** median [95% CrI]  



## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).



|      Statistic      |   mean   | ESS  |
|:-------------------:|:--------:|:----:|
|      posterior      |  -42787  | 169  |
|     likelihood      |  -42755  | 1526 |
|        prior        |  -32.15  | 114  |
| treeLikelihood.algn |  -42755  | 1526 |
|     TreeHeight      |  0.2852  | 218  |
|      clockRate      | 0.001741 | 163  |
|        kappa        |  4.277   | 1750 |
|     PhydynSEIR      | -0.9588  | 119  |
|       seir.E        |  24.73   | 115  |
|       seir.S        |  95031   | 759  |
|       seir.b        |  23.73   | 147  |
|      seir.exog      | 0.001645 | 108  |
| seir.exogGrowthRate |  24.47   |  48  |
|   seir.importRate   | 0.08811  | 1409 |
|      seir.p_h       |  0.2158  | 222  |
|      seir.tau       |  74.34   | 2351 |
|   freqParameter.1   |  0.2979  | 671  |
|   freqParameter.2   |  0.1826  | 804  |
|   freqParameter.3   |  0.1951  | 795  |
|   freqParameter.4   |  0.3245  | 670  |
|       gamma0        |    73    |  NA  |
|       gamma1        |  121.7   |  27  |

Table: Effective sample size of model parameters




Model version: seijr_0.1.1_coupled

Report version: 20200528-153636-b3e93655


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


