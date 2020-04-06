---
title: ""

output:
  word_document:
    fig_width: 7
    fig_height: 5
    fig_caption: true
    highlight: "tango"
    reference_docx: word_style.docx
    df_print: "kable"
---




# Phylodynamic analysis: Weifang, 2020-03-09


### Primary author: Lily Geidelberg

### Report prepared on 2020-04-05

#### On behalf of the MRC GIDA COVID-19 phylodynamics working group at Imperial College London: Lily Geidelberg, Olivia Boyd, Manon Ragonnet, David Jorgensen,  Igor Siveroni, Erik Volz




## Background information  




#### This is analysis is based on : 
  
* **20 whole genomes** sampled from **within Weifang**
* **50 whole genomes** sampled from outside of **Weifang**
* Samples within Weifang were collected between **2020-01-23** and **2020-03-09**


##### To add: [optional plot of sample distribution through time]



## How many are infected in Weifang?





![Figure 1: Cumulative estimated infections through time. Points represent reported cases in the region.](SEIJR_plot_size.png){width=90%}

* Estimated cumulative infections at last sample (2020-03-09): **223 [38-827]** median [95%CI]

* Cumulative confirmed infections reported at 2020-03-09: 
****  

* Cumulative number of active infections at 2020-03-09:  



![Figure 2: Daily estimated infections through time. Points represent reported cases in the region.](Daily.png){width=90%}






![Figure 3: Reproduction number through time](Rt.png){width=90%}


Reproduction number at last sample (2020-03-09): **0.0911 [0.0129-0.532]** median [95% CrI]


## How quickly has the epidemic in Weifang grown?




-------------------------------------------------------------------------------
 Quantile   Reproduction number   Growth rate (per day)   Doubling time (days) 
---------- --------------------- ----------------------- ----------------------
   50%             3.12                   0.194                   3.57         

   2.5%            1.81                  0.0871                   2.3          

  97.5%            4.79                   0.301                   7.96         
-------------------------------------------------------------------------------

Table: Table 1: Reproduction number, growth rate and doubling times





## How has SARS-CoV 2 evolved in Weifang?



![Figure 4: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to location sampling; red tips were sampled from within the region, blue tips from outside](mcc.png){width=400px}




##### Molecular clock rate of evolution: **0.0012 [0.000874-0.00163]** median [95% CrI]  

<!-- #### (optional) Number of introductions into Weifang (someone needs to write code to compute this) -->




## Predicted cumulative infections over next 14 days (assuming exponential growth):



![Figure 5: Cumulative estimated infections. The dashed line indicates the date of last sample in analysis. The points represent reported cases in the region.](cumu_inf_exp_model.png){width=90%}

Predicted reproduction number at 2020-03-16 (7 days after last sample): 
median [95% CrI]
[to add!]




## Methods summary



Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).

##### Additional notes about methods: [Insert details about any deviation from the main pipeline, like sample selection, changes to the model etc, where you retrieved other data]

Model version: seijr0.0.0


## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


