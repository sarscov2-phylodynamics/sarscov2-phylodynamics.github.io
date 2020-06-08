---
title: "Phylodynamic Analysis: Comunitat Valenciana, Spain : 2020-04-01 "
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

#### This report uses full genome sequence data for Comunitat Valenciana shared publicly by [Servicio de Microbiologia. Consorcio Hospital General Universitario de Valencia](https://www.icsa.es/en/clientes/hospital-general-servicio-de-microbiologia-valencia),  [Servicio de Microbiologia. Hospital Clinico Universitario de Valencia](http://clinicomalvarrosa.san.gva.es/ca/microbiologia),and [Sequencing and Bioinformatics Service and Molecular Epidemiology Research Group. FISABIO-Public Health](http://fisabio.san.gva.es/en/genomica-y-salud) and a set of international background sequences from [GISAID](http://www.epicov.org) ([laboratory acknowledgements](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls))


## Key points
* We estimate a number of key epidemiological parameters for Comunitat Valenciana based on the genetic diversity of these samples alongside a set of closely related sequences from elsewhere which act as a global reservoir.
* In this preliminary analysis we estimate a basic reproduction number (R0) of 2.16 in Comunitat Valenciana at the start of the epidemic with R(t) falling just below 1 at end of March.
* We estimate a moderately high reporting rate in Comunitat Valenciana (around 25%) with a median estimate from the phylodynamic model of 17,807 cases at the end of April compared to 5,413 reported cases at the same time point.



#### This analysis is based on : 
  
* **54 whole genomes** sampled from **within Comunitat Valenciana**
* **49 whole genomes** sampled from outside of **Comunitat Valenciana**
* Samples within Comunitat Valenciana were collected between **2020-02-27** and **2020-04-01**

Duplicate sequences were removed because they may represent infections associated with the same contact-traced transmission chain. Figure 1 shows the distribution of the included sequences over time, including external sequences. 

Reported cases for comparison to our model predictions are taken from the [BING Covid Tracker](https://bing.com/covid/local/valencia_spain?vert=graph). These data are used for comparison purposes and to estimate the reporting rate and do not influence the phylodynamic analysis.


![plot of chunk sampling dist]({{ site.url }}/assets/20200603-213411-77f3c86e/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in Comunitat Valenciana?
In this  analysis we estimate ** 17807 [6980-76264] ** median [95%CI] cumulative infections at the time of the the last sample (2020-04-28). At the same time point there were **5413** reported cases. The estimates follow a similar trajectory to the reported cases at a different magnitude. 







![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200603-213411-77f3c86e/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200603-213411-77f3c86e/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Comunitat Valenciana. The dashed line indicates the date of last sample in Comunitat Valenciana in this analysis.*


* Estimated cumulative infections at last sample (2020-04-01): **17807 [6980-76264]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-01: **5413**  

<!-- * Cumulative number of active infections at 2020-04-01:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200603-213411-77f3c86e/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200603-213411-77f3c86e/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in Comunitat Valenciana. The dashed line indicates the date of last sample in Comunitat Valenciana in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200603-213411-77f3c86e/reporting.png)

*Figure 4: Estimated percentage of cases reported in Comunitat Valenciana. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200603-213411-77f3c86e/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in Comunitat Valenciana in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in Comunitat Valenciana, respectively. *

Reproduction number at last sample (2020-04-01): **0.926 [0.31-1.8]** median [95% CrI]


## How quickly has the epidemic in Comunitat Valenciana grown?




| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.16         |         0.119         |         5.84         |
|   2.5%   |        1.82         |        0.0876         |         4.41         |
|  97.5%   |        2.63         |         0.157         |         7.91         |

Table 1: Reproduction number, growth rate and doubling times







## How has SARS-CoV 2 evolved in Comunitat Valenciana?



![plot of chunk mcc_tree]({{ site.url }}/assets/20200603-213411-77f3c86e/mcc.png)

*Figure 6: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within Comunitat Valenciana, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000818 [0.000645-0.00108]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Comunitat Valenciana (someone needs to write code to compute this) -->




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).



|      Statistic      |   mean    |  ESS  |
|:-------------------:|:---------:|:-----:|
|      posterior      |  -43004   |  194  |
|     likelihood      |  -42889   | 5846  |
|        prior        |  -114.9   |  190  |
| treeLikelihood.algn |  -42889   | 5846  |
|     TreeHeight      |  0.4457   |  350  |
|      clockRate      | 0.0008301 |  332  |
|        kappa        |   3.373   | 32227 |
|     PhydynSEIR      |  -85.04   |  188  |
|       seir.E        |   16.46   |  206  |
|       seir.S        |   67939   |  654  |
|       seir.b        |   16.9    |  511  |
|      seir.exog      |  0.06106  |  885  |
| seir.exogGrowthRate |   24.16   |  221  |
|   seir.importRate   |   4.153   |  340  |
|      seir.p_h       |  0.2065   |  411  |
|      seir.tau       |   73.73   |  946  |
|   freqParameter.1   |  0.2976   | 11832 |
|   freqParameter.2   |  0.1829   | 12669 |
|   freqParameter.3   |  0.1951   | 13228 |
|   freqParameter.4   |  0.3244   | 11025 |


Table 2: Effective sample size of model parameters



Model version: seijr0.1.1

Report version: 20200603-213411-77f3c86e


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


