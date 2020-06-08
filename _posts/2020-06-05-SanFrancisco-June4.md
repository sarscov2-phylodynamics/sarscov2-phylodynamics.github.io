---
title: "Phylodynamic Analysis: San Francisco, CA, USA: 2020-04-30 "
date: June 03, 2020
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

### Report prepared on 2020-06-03
#### This report uses full genome sequence data for San Francisco shared publicly by [UCSF Clinical Microbiology Laboratory](https://clinlab.ucsf.edu/ucsf-clinical-laboratories-online-manual) and [Chan-Zuckerberg Biohub](https://www.czbiohub.org/) and a set of international background sequences from [GISAID](http://www.epicov.org) ([laboratory acknowledgements](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls))



## Key points
* We estimate a number of key epidemiological parameters for San Francisco based on the genetic diversity of these samples alongside a set of closely related sequences from elsewhere which act as a global reservoir.
* In this preliminary analysis we estimate a basic reproduction number (R0) of 2.04 in San Francisco at the start of the epidemic with R(t) falling below 1 at the beginning of April.
* We estimate a low reporting rate in San Francisco (below 5%) with a median estimate from the phylodynamic model of 50,030 cases at the end of April compared to 1,647 reported cases at the same time point.




#### This analysis is based on : 
  
* **50 whole genomes** sampled from **within San Francisco**
* **47 whole genomes** sampled from outside of **San Francisco**
* Samples within San Francisco were collected between **2020-03-05** and **2020-04-30**

Duplicate sequences were removed because they may represent infections associated with the same contact-traced transmission chain. Figure 1 shows the distribution of  the sequences analysed over time, including external sequences. 

Reported cases for comparison to our model predictions are taken from [DataSF](https://data.sfgov.org/COVID-19/Covid-total-cases-by-day/ss5f-b7dg). These data are used for comparison purposes and to estimate the reporting rate and do not influence the phylodynamic analysis.


![plot of chunk sampling dist]({{ site.url }}/assets/20200603-222403-6500a88b/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in San Francisco?
In this  analysis we estimate **50030 [10273-229885] ** median [95%CI] cumulative infections at the time of the the last sample (2020-04-30). At the same time point there were **1647** reported cases. The estimates follow a similar trajectory to the reported cases at a different magnitude. 



![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200603-222403-6500a88b/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200603-222403-6500a88b/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in San Francisco. The dashed line indicates the date of last sample in San Francisco in this analysis.*


* Estimated cumulative infections at last sample (2020-04-30): **50030 [10273-229885]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-30: **1647**  

<!-- * Cumulative number of active infections at 2020-04-30:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200603-222403-6500a88b/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200603-222403-6500a88b/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in San Francisco. The dashed line indicates the date of last sample in San Francisco in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200603-222403-6500a88b/reporting.png)

*Figure 4: Estimated percentage of cases reported in San Francisco. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200603-222403-6500a88b/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in San Francisco in this analysis. The red dashed line indicates the date of the general lockdown in San Francisco and the rest of California. *

Reproduction number at last sample (2020-04-30): **0.472 [0.291-1.09]** median [95% CrI]


## How quickly has the epidemic in San Francisco grown?




| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.04         |         0.108         |         6.43         |
|   2.5%   |        1.75         |        0.0809         |         4.87         |
|  97.5%   |        2.44         |         0.142         |         8.56         |

Table 1: Reproduction number, growth rate and doubling times






## How has SARS-CoV 2 evolved in San Francisco?

![plot of chunk mcc_tree]({{ site.url }}/assets/20200603-222403-6500a88b/mcc.png)

*Figure 6: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within San Francisco, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000634 [0.000504-0.000934]** median [95% CrI]  

<!-- #### (optional) Number of introductions into San Francisco (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).




|      Statistic      |   mean    |  ESS  |
|:-------------------:|:---------:|:-----:|
|      posterior      |  -43036   |  130  |
|     likelihood      |  -42922   |  562  |
|        prior        |  -114.6   |  117  |
| treeLikelihood.algn |  -42922   |  562  |
|     TreeHeight      |  0.5041   |  171  |
|      clockRate      | 0.0006528 |  122  |
|        kappa        |   4.119   | 22544 |
|     PhydynSEIR      |   -83.4   |  116  |
|       seir.E        |   17.27   |  154  |
|       seir.S        |   98542   | 1137  |
|       seir.b        |   15.66   |  375  |
|      seir.exog      |  0.2734   |  372  |
| seir.exogGrowthRate |   22.93   |  149  |
|   seir.importRate   |   7.22    |  412  |
|      seir.p_h       |  0.2091   |  341  |
|      seir.tau       |   73.75   |  946  |
|   freqParameter.1   |   0.298   | 7741  |
|   freqParameter.2   |  0.1823   | 8741  |
|   freqParameter.3   |  0.1954   | 7953  |
|   freqParameter.4   |  0.3243   | 7593  |


Table 2: Effective sample size of model parameters



Model version: seijr0.1.1

Report version: 20200603-222403-6500a88b


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


