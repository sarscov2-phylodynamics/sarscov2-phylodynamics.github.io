---
title: "Phylodynamic Analysis: Luxembourg, 2020-03-18"
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

#### <a href="mailto:david.jorgensen13@imperial.ac.uk" class="email">david.jorgensen13@imperial.ac.uk</a>

#### Olivia Boyd, Lily Geidelberg, David Jorgensen, Manon Ragonnet, Igor Siveroni, Erik Volz and the [Imperial College COVID-19 Response Team](http://sarscov2phylodynamics.org/about/)

**<a href="https://sarscov2phylodynamics.org/" class="uri">https://sarscov2phylodynamics.org/</a>**

#### Report prepared on 2020-04-11

### Background information

This analysis is based on :

-   **45 whole genomes** sampled from **within Luxembourg**
-   **81 whole genomes** sampled from outside of **Luxembourg**
-   Samples within Luxembourg were collected between **2020-02-29** and
    **2020-03-18**

These numbers will differ from the number of uploaded sequences as we remove sequences with likely sequencing errors or significant gaps. This analysis gave a bimodal result with similar posterior estimates. This analysis is representative of the results suggesting continued transmission, in the runs not represented here the transmission rate, beta, collapses resulting in very few reported cases. This is likely due to the inclusion of closely related sequences from the same clusters of transmission. This sample contains 3 identical sequences, 2 within Luxembourg and 1 between Luxembourg and Ireland.

### Infections in Luxembourg

Using a phylodynamic model we estimate epidemiological parameters using SARS CoV 2 sequence data from Luxembourg together with a background set of sequences sampled from the larger internationational viral population. [The model is explained in detail here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf). Reported case numbers for comparison are extracted from the [Johns Hopkins Coronavirus Resource Center](https://coronavirus.jhu.edu/).



![Figure 1: Cumulative estimated infections through time. Points represent reported cases in the region.]({{ site.url }}/assets/20200409-191825-f968e0cb/SEIJR_plot_size.png){:width="70%" }

*Figure 1: Cumulative estimated infections through time. Points represent reported cases in the region.*

<!-- 
<center>
![]({{ site.url }}/assets/20200409-191825-f968e0cb/SEIJR_plot_size.png){:width="70%"}

![Figure 1: Cumulative estimated infections through time. Points represent reported cases in the region.]({{ site.url }}/assets/20200409-191825-f968e0cb/SEIJR_plot_size.png){:width="70%"}

</center>
--> 


-   Estimated cumulative infections at last sample (2020-03-18): **329 [97-1442]** median [95%CI]

-   Cumulative confirmed infections reported at 2020-03-18: **203**  
    

![]({{ site.url }}/assets/20200409-191825-f968e0cb/Daily.png){:width="70%"}

*Figure 2: Daily estimated infections through time. Points represent reported cases in the region.*


Towards the end of the curve fitted to the genetic data the number of new reported infections overtakes the median estimate from the genetic data. Previous work has suggested that [the proportion of cases which are reported in Luxembourg is high](https://cmmid.github.io/topics/covid19/severity/global_cfr_estimates.html) which would support this observation. An estimation of the reporting rate over time based on this analysis is given in figure 3. We are not yet in a position to provide out of sample estimates from the phylodynamic model but an implementation of this is planned for the coming weeks.


![]({{ site.url }}/assets/20200409-191825-f968e0cb/reporting.png){:width="70%"}

*Figure 3: Estimated percentage of daily cases reported in Luxembourg. error bars represent the 95% credible interval.*


### Epidemic growth in Luxembourg

The estimated effective reproduction number (Rt) remains constant over the time period represented in the sampled genomes from luxembourg suggesting continued exponential growth over this period. Median values for the reproduction number, growth rate and doubling time and 95% Credible intervals are given in Table 1.

<center>
<table class="table" style="width: auto !important; ">
<caption>
Table 1
</caption>
<thead>
<tr>
<th style="text-align:center;">
Quantile
</th>
<th style="text-align:center;">
Reproduction number
</th>
<th style="text-align:center;">
Growth rate (per day)
</th>
<th style="text-align:center;">
Doubling time (days)
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;">
50%
</td>
<td style="text-align:center;">
2.52
</td>
<td style="text-align:center;">
0.149
</td>
<td style="text-align:center;">
4.66
</td>
</tr>
<tr>
<td style="text-align:center;">
2.5%
</td>
<td style="text-align:center;">
1.47
</td>
<td style="text-align:center;">
0.0537
</td>
<td style="text-align:center;">
2.95
</td>
</tr>
<tr>
<td style="text-align:center;">
97.5%
</td>
<td style="text-align:center;">
3.68
</td>
<td style="text-align:center;">
0.233
</td>
<td style="text-align:center;">
12.30
</td>
</tr>
</tbody>
</table>
</center>

### Evolution of SARS-CoV 2 in Luxembourg

The maximum likelihood phylogeny presented in figure 4 shows the genetic distance between sequenced SARSCoV-2 genomes from Luxembourg and elsewhere. Due to the slow evolution of the virus compared with the time covered by the sample there are a number of short internal branches. This figure shows that although some samples from Luxembourg cluster together, they represent a cross-section of the wider phylogeny and likely result from multiple different introductions.


![Figure 4: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside]({{ site.url }}/assets/20200409-191825-f968e0cb/ML_tree.png){:width="400px"}

*Figure 4: Maximum likelihood phylogeny with the x-axis representing NT substitutions per site. The colour of the tips corresponds to sampling location; red tips were sampled from within the region, grey tips from outside*

A time-scaled phylogeny estimated alongside the epidemiological parameters presented previously is given in figure 5. Due to the low diversity of the SARSCoV-2 sequence data few of the internal nodes have high support. the sample of background sequences is stratified to give a good sample over time and selects sequences whcih are closely related to the Luxembourg sequences. The background data are also limited by which countries are submitting sequence data and the quality of this data, meaning Europe and North America are over-represented in the phylogeny.


![Figure 5: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to sampling location. Blue bars represent the 95% Credible interval for the position of internal nodes]({{ site.url }}/assets/20200409-191825-f968e0cb/mcc2.png){:width="400px"}

*Figure 5: Time scaled phylogeny co-estimated with epidemiological parameters. The colour of the tips corresponds to sampling location. Blue bars represent the 95% Credible interval for the position of internal nodes.*

##### Molecular clock rate of evolution: **0.00126 [0.000916-0.00165]** median [95% CrI]

<!-- #### (optional) Number of introductions into Luxembourg (someone needs to write code to compute this) -->

### Methods summary

Details on methods and priors can be [found here](http://whoinfectedwhom.org/seijr0.1.0_methods.pdf).

Model version: seijr0.1.0

### Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).
