---
title: "Time of epidemic seeding events"
urlcolor: blue
linkcolor: blue
---






### Primary author: Erik Volz

### Report prepared on 2020-04-08

#### On behalf of the MRC GIDA COVID-19 phylodynamics working group at Imperial College London: Lily Geidelberg, Olivia Boyd, Manon Ragonnet, David Jorgensen,  Igor Siveroni, Erik Volz


The time that a COVID19 epidemic begins in a particular region (city,county,country etc.) depends on

- Patterns of travel between the region and and other locations with ongoing COVID 19 epidemics
- The state of the epidemic in other locations with travel flows to the region [Bhatia et al.](#references)
- Public health interventions which restrict travel to and from the region [Chinazzi et al.](#references)

There is usually not a single 'beginning' of an epidemic. The epidemic can be _seeded_ multiple times, as distinct virus lineages colonize the region from different places with ongoing COVID19 epidemics. We can compute the distribution of the time of seeding events for different regions using phylogenetic methods. Given the many factors that can influence these events, these distributions can be complex and differ a great deal from region to region. These distributions are shown in Figure 1. 


![]({{ site.url }}/assets/time_importations_b1.1.png)

*Figure 1: Distribution of importation times (seeding events) in different regions. Black vertical line indicates the estimated mode and the red line represents the time of most recent sequence sample. Red: Asia. Blue: North America. Light blue: South America. Green: Europe. Brown: Australia. Yellow: Africa. A high quality version of this figure can be [downloaded here]({{ site.url }}/assets/time_importations_b1.pdf)*

<!-- {:height="960px" width="1440px"} -->

The panels in Figure 1 are ordered from earliest to latest in terms of the mode of each distribution. The data are also shown in Table 1. 


|               |Mode       |Median     |
|:--------------|:----------|:----------|
|Shanghai       |2020-01-05 |2020-01-09 |
|Hong_Kong      |2020-01-14 |2020-01-20 |
|Guangdong      |2020-01-21 |2020-01-21 |
|Singapore      |2020-01-24 |2020-01-27 |
|Belgium        |2020-02-18 |2020-02-23 |
|Netherlands    |2020-02-22 |2020-02-22 |
|USA/NY         |2020-02-27 |2020-02-28 |
|USA/WA         |2020-02-28 |2020-02-29 |
|Spain          |2020-02-29 |2020-02-23 |
|Norway         |2020-02-29 |2020-03-01 |
|Brazil         |2020-02-29 |2020-03-03 |
|Iceland        |2020-03-01 |2020-02-22 |
|Canada/ON      |2020-03-02 |2020-03-01 |
|Canada/BC      |2020-03-02 |2020-02-27 |
|Portugal       |2020-03-03 |2020-03-03 |
|Spain/Valencia |2020-03-04 |2020-03-01 |
|USA/CT         |2020-03-05 |2020-03-04 |
|Finland        |2020-03-05 |2020-03-04 |
|Luxembourg     |2020-03-06 |2020-03-03 |
|Congo          |2020-03-07 |2020-03-08 |
|Australia/NSW  |2020-03-10 |2020-03-05 |
|USA/ID         |2020-03-11 |2020-03-06 |
|USA/WI         |2020-03-12 |2020-03-08 |

*Table 1: The mode and median importation time.*


__Interpretation:__

* Locations in China have the earliest seeding events consistent with radiation out of Hubei province where the epidemic likely originated in November or December 2019. This is followed closely by Singapore. Data from Thailand, Japan, and Korea were too sparse to draw conclusions. 
* Numerous seeding events took place in urban hubs in North America and Europe in late January and early February. 
* Locations on the periphery of transportation networks in North America and Europe have later epidemics as they are seeded from national rather than international sources. Thes include locations such as Wisconsin and Idaho in America and Finland in Europe. 
* Some regions are seeded from both international sources early on and regional sources later. For example: New South Wales in Australia has many early seeding events most of the seeding events took place in March. Similar patterns are seen in Valencia, Spain, and British Columbia.
* As yet, there are few sequences available from Africa and the sequences from Congo provide valuable information about the epidemic there. It appears that this epidemic was seeded relatively recently which has implications for the likely number of infections in that region. 


## Methods summary


1. Filter the latest GISAID alignment for quality. We remove all sequences from non-human hosts and missing a complete date of sample collection. We remove sequences with more than 10% gaps. Sequences are aligned in MAFFT and ends trimmed. We identify molecular clock outliers by these steps
	- Estimate a maximum likelihood tree (IQTree)
	- Estimate a rooted time-scaled tree using _treedater_ and fixing the molecular clock rate of evolution to 0.001 substitutions per site per year 
	- Outlier samples are identified and removed using the _outlierTips_ function and a threshold of q=5%.


2. Take a time-stratified sample both in and outside of the region of interest. For this analysis, we include all samples within the region and m=50 exogenous sequences. Using 50 exogenous sequences has been found to yield reproducible results. Additionally we include all samples with closest genetic distance to the sequences within the reigon. Sampling is carried out in two steps: 
	- Time stratification: Samples are ordered by time of location and a stratified random sample of the desired size is taken 
	- Close matches: Additionally we include all exogenous sequence with closest cophenetic distance to any regional sequence computed from the maximum likelihood tree if not already included in the time stratified sample 

3. We re-estimate a maximum likelihood tree using IQTree and a HKY substitution model. To generate a large set of time trees, these steps are repeated 25 times:
	- Small branch lengths are collapsed and polytomies resolved randomly yielding a set of distinct bifurcating phylogenies
	- The treedater R package is used to estimate time scaled trees and root position for each ML tree constraining the clock rate  0.0009-.0015 subst/site/year.
	- One hundred parametric bootstrap trees are generated for each of the 25 ML trees. 
	
4. For each time tree, we reconstruct the state of each internal node by maximum parsimony with the _phangorn_ R package. We define the time of an importation event to be the midpoint of a branch such that the parent is inferred to be in the international reservoir ('exogenous') and the daughter is inferred to be regional. This is computed for each node and tabulated across trees. 


Versions:

	- iqtree: 1.6.1 
	- treedater: 0.5.0 
	- R: 3.6.3 
	- ape: 5.3 
	- phangorn: 2.5.5


## References

1. Bhatia, Sangeeta, et al. "Report 6: relative sensitivity of international surveillance." (2020).
2. Chinazzi, Matteo, et al. "The effect of travel restrictions on the spread of the 2019 novel coronavirus (COVID-19) outbreak." Science (2020).

## Acknowledgements

This work was supported by the [MRC Centre for Global Infectious Disease Analysis at Imperial College London](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis).

Sequence data were provided by [GISAID](http://www.epicov.org) and [these laboratories](http://whoinfectedwhom.org/gisaid_cov2020_acknowledgement_table.xls).


