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
title: "Phylodynamic Analysis: ComunitatValenciana,: 2020-04-01 "
date: June 03, 2020
---





### Primary author: Manon Ragonnet

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

### Report prepared on 2020-06-03





## Background information  




#### This is analysis is based on : 
  
* **54 whole genomes** sampled from **within ComunitatValenciana**
* **49 whole genomes** sampled from outside of **ComunitatValenciana**
* Samples within ComunitatValenciana were collected between **2020-02-27** and **2020-04-01**



![plot of chunk sampling dist]({{ site.url }}/assets/20200603-213411-77f3c86e/sample_distribution.png)

*Figure 1: Sampling distributions over time of number of sequences included within the region versus sequences included from the international reservoir.*


## How many are infected in ComunitatValenciana?





![plot of chunk Cumulative estimated infections through time]({{ site.url }}/assets/20200603-213411-77f3c86e/SEIJR_plot_size.png)


![plot of chunk Cumulative estimated infections through time log scale]({{ site.url }}/assets/20200603-213411-77f3c86e/SEIJR_plot_size_log.png)


*Figure 2: Estimated cumulative infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in ComunitatValenciana. The dashed line indicates the date of last sample in ComunitatValenciana in this analysis.*


* Estimated cumulative infections at last sample (2020-04-01): **17807 [6980-76264]** median [95%CI]

* Cumulative confirmed infections reported at 2020-04-01: **5413**  

<!-- * Cumulative number of active infections at 2020-04-01:   -->



![plot of chunk daily estimated infections through time]({{ site.url }}/assets/20200603-213411-77f3c86e/Daily.png)


![plot of chunk daily estimated infections through time log scale]({{ site.url }}/assets/20200603-213411-77f3c86e/Daily_log.png)


*Figure 3: Estimated daily  infections through time represented by solid black line (median) and 95% CrI (ribbon). Black points represent reported cases in ComunitatValenciana. The dashed line indicates the date of last sample in ComunitatValenciana in this analysis.*


![plot of chunk reporting]({{ site.url }}/assets/20200603-213411-77f3c86e/reporting.png)

*Figure 4: Estimated percentage of daily cases reported in ComunitatValenciana. Error bars represent the 95% credible interval.*



![plot of chunk Rt]({{ site.url }}/assets/20200603-213411-77f3c86e/Rt.png)

*Figure 5: Reproduction number through time. The black vertical dashed line indicates the date of last sample in ComunitatValenciana in this analysis. Orange and red dashed lines indicate dates of school closure and general lockdown in ComunitatValenciana, respectively. *

Reproduction number at last sample (2020-04-01): **0.926 [0.31-1.8]** median [95% CrI]


## How quickly has the epidemic in ComunitatValenciana grown?




```


| Quantile | Reproduction number | Growth rate (per day) | Doubling time (days) |
|:--------:|:-------------------:|:---------------------:|:--------------------:|
|   50%    |        2.16         |         0.119         |         5.84         |
|   2.5%   |        1.82         |        0.0876         |         4.41         |
|  97.5%   |        2.63         |         0.157         |         7.91         |

Table: Reproduction number, growth rate and doubling times
```






## How has SARS-CoV 2 evolved in ComunitatValenciana?


## *[placeholder for ML tree]*

*Figure 6: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*



![plot of chunk mcc_tree]({{ site.url }}/assets/20200603-213411-77f3c86e/mcc.png)

*Figure 7: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within ComunitatValenciana, blue tips from outside.*




##### Molecular clock rate of evolution: **0.000818 [0.000645-0.00108]** median [95% CrI]  

<!-- #### (optional) Number of introductions into ComunitatValenciana (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![plot of chunk predicted infections through time]({{ site.url }}/assets/20200603-213411-77f3c86e/cumu_inf_exp_model.png)

*Figure 8: Cumulative estimated infections. The dashed line indicates the date of last sample in ComunitatValenciana in this analysis. The points represent reported cases in ComunitatValenciana.*

Based on an estimated growth rate of 0.119 [0.0876 - 0.157] median [95% CrI]:  

We estimate cumulative number of infections at last sample (2020-04-01) as: 45488 [4200 - 765374]

We estimate number of infections at 2020-05-18 (47 days after last sample) as:
12297096 [249384 - 1307777938]  




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).





```


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
|       gamma0        |    73     |  NA   |
|       gamma1        |   121.7   |  45   |

Table: Effective sample size of model parameters
```



Model version: seijr0.1.1

Report version: 20200603-213411-77f3c86e


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


