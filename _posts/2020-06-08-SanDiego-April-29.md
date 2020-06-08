---
title: "Phylodynamic Analysis: San Diego, CA, USA: 2020-04-29 "
date: June 08, 2020
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




### Primary author: Manon Ragonnet

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-06-08

#### This report uses full genome sequence data for San Diego shared publicly by [The Scripps Research Institute](https://www.scripps.edu/) and [Rady Children's Hospital](https://www.rchsd.org/) and a set of international background sequences from [GISAID](http://www.epicov.org) ([laboratory acknowledgements](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls))


## Key points
* We estimate a number of key epidemiological parameters for San Diego based on the genetic diversity of these samples alongside a set of closely related sequences from elsewhere which act as a global reservoir.
* In this  analysis we estimate a basic reproduction number (R0) of 1.91 in San Diego with R falling below 1 by the time of the last available sequence data at the beginning of April.
* We estimate a reporting rate of around 10% in San Diego with a median estimate from the phylodynamic model of 28,960 cases at the end of April compared to 3,432 reported cases at the same time point.


#### This analysis is based on : 
  
* **35 whole genomes** sampled from **within San Diego**
* **51 whole genomes** sampled from outside of **San Diego**
* Samples within San Diego were collected between **2020-03-11** and **2020-04-29**

Duplicate sequences were removed because they may represent infections associated with the same contact-traced transmission chain. Figure 1 shows the distribution of  the sequences analysed over time, including external sequences. 

Reported cases for comparison to our model predictions are taken from [San Diego County](https://www.sandiegocounty.gov/content/dam/sdc/hhsa/programs/phs/Epidemiology/COVID-19%20Bar%20Graph%20of%20New%20and%20Total%20Cases.pdf). These data are used for comparison purposes and to estimate the reporting rate and do not influence the phylodynamic analysis.

![plot of chunk sampling dist]({{ site.url }}/assets/20200608-124449-b5e991fd/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in San Diego?
In this  analysis we estimate **28960 [8103-162788]** median [95%CI] cumulative infections at the time of the the last sample (2020-04-29). At the same time point there were **3432** reported cases. The estimates follow a similar trajectory to the reported cases at a different magnitude.




![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200608-124449-b5e991fd/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200608-124449-b5e991fd/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in San Diego. The dashed line indicates the date of last sample in San Diego in this analysis.*


* Estimated cumulative infections at last sample (2020-04-29): **28960 [8103-162788]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-29: **3432**  

<!-- * Cumulative number of active infections at 2020-04-29:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200608-124449-b5e991fd/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200608-124449-b5e991fd/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in San Diego. The dashed line indicates the date of last sample in San Diego in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200608-124449-b5e991fd/reporting.png)

*Figure 4: Estimated percentage of cases reported in San Diego. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200608-124449-b5e991fd/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in San Diego in this analysis. The red dashed line indicates the date of the general lockdown in San Diego and the rest of California. *

Reproduction number at last sample (2020-04-29): **0.575 [0.307-1.35]** median [95% CrI]


## How quickly has the epidemic in San Diego grown?




| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        1.91         |        0.0963         |         7.2          |
|   2.5%   |        1.58         |        0.0647         |          5           |
|  97.5%   |         2.4         |         0.139         |         10.7         |

Table 1: Reproduction number, growth rate and doubling times







## How has SARS-CoV 2 evolved in San Diego?



![plot of chunk mcc_tree]({{ site.url }}/assets/20200608-124449-b5e991fd/mcc.png)

*Figure 6: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within San Diego, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000634 [0.000512-0.000836]** median [95% CrI]  

<

## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).






|      Statistic      |   mean    |  ESS  |
|:-------------------:|:---------:|:-----:|
|      posterior      |  -42560   |  639  |
|     likelihood      |  -42461   | 5768  |
|        prior        |  -99.58   |  610  |
| treeLikelihood.algn |  -42461   | 5768  |
|     TreeHeight      |  0.4495   |  391  |
|      clockRate      | 0.0006439 |  474  |
|        kappa        |   5.96    | 42416 |
|     PhydynSEIR      |  -68.96   |  630  |
|       seir.E        |   16.49   |  307  |
|       seir.S        |   81953   | 1142  |
|       seir.b        |   14.95   |  900  |
|      seir.exog      |  0.09486  | 1031  |
| seir.exogGrowthRate |   24.2    |  232  |
|   seir.importRate   |   5.133   |  771  |
|      seir.p_h       |  0.2068   |  946  |
|      seir.tau       |   73.54   | 1457  |
|   freqParameter.1   |  0.2983   | 14956 |
|   freqParameter.2   |  0.1827   | 16421 |
|   freqParameter.3   |  0.1949   | 15535 |
|   freqParameter.4   |  0.3242   | 15396 |

Table 2: Effective sample size of model parameters



Model version: seijr0.1.1

Report version: 20200608-124449-b5e991fd


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


