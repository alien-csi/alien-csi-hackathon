---
title: 'Wasps, interactions and impacts'
tags:
  - invasive species
  - biotic interactions
  - networks
  - Vespa velutina
  
Authors:
  - name: Simone Lioy
    orcid: 0000-0003-2939-988X
    affiliation: 1
  - name: Jasmijn Hillaert
    orcid: 0000-0002-3761-8846
    affiliation: 2
  - name: Cristina Preda
    orcid: 0000-0002-3513-7344
    affilitation: 3
  - name: Quentin Groom
    orcid: 0000-0002-0596-5376
    affiliation: 4
  
  

affiliations:
 - name: Department of Agriculture, Forest and Food Sciences, University of Turin, Largo Paolo Braccini 2, 10095 Grugliasco (Turin), Italy
   index: 1
 - name: Research Institute Nature and Forest, Herman Teirlinckgebouw, Havenlaan 88 bus 73, 1000 Brussel 
   index: 2
 - name: Ovidius University of Constanţa, Constanţa, Romania
   index: 3
 - name: Meise Botanic Garden, Nieuwelaan 38, 1860 Meise, Belgium
   index: 4


date: 19 August 2022
bibliography: paper.bib
authors_short: Last et al. (2021) BioHackrXiv  template
group: BioHackrXiv
event: Alien-CSI Hackathon, Romania, 2022
biohackathon_name: Alien-CSI Hackathon, Romania, 2022
biohackathon_url: https://alien-csi.eu/
biohackathon_location: Constanța, Romania
---

# Introduction

Knowing and understanding the interactions between organisms is key to understanding the impacts those organisms have on each other. This is particularly important for invasive species risk assessment where experts try to predict the impacts of an invasive species in a novel region and ecological context [@d2015harmonia+]. At the [Alien-CSI](https://alien-csi.eu/) Hackathon (Constanța, Romania) we sought to improve and analyze biotic interaction data specifically for the Asian yellow-legged hornet (*Vespa velutina*, Vespidae, Hymenoptera). 
*V. velutina* is a hornet native to Asia and introduced in Europe in 2004, where it is rapidly spreading and generating environmental and socio-economics impacts [@monceau2014vespa; @laurino2019vespa; @lioy2022invasive]. The former are mainly connected with the behavior of *V. velutina* that preys on other insects, particularly bees [@rome2021not], generating an indirect effect on the pollination of plants [@rojas2020invasive]. On the other hand, socio-economic issues are connected with the colony losses recorded by the beekeepers [@laurino2019vespa], the potential risk to human health [@vidal2021anaphylaxis], and the costs associated with the implementation of long-term control strategies [@barbet2020economic].
Focusing on biological interactions, *V. velutina* could interact with other organisms due to a multitude of mechanisms, which could be summarized in:
predation (either preying on or preyed upon by other animal species);
flower visitation and seed dispersal;
parasitism (reservoir/vector of parasites and viruses);
habitat provision (e.g. nesting sites).
Recording these interactions may allow us to deepen our understanding of the impacts of *V. velutina* and forecast the consequences on the network of native organisms that occur in areas not yet invaded by the species. 


## Aims

* To gather interaction data for *Vespa velutina* and the habits invaded by this species.
* To visualize the interactions we gather to make them more useful for risk assessment.
* To use the data we have collected to assess the risks of invasion.


# Updating interactions of *Vespa velutina* on the Global Biotic Interactions database

The [Global Biotic Interactions](https://www.globalbioticinteractions.org/) (GloBI) provides open access to biotic interaction data (e.g., predator-prey, pollinator-plant, pathogen-host, parasite-host) by combining existing open datasets using open-source software, for example by incorporating interactions data from iNaturalist, one of the most popular Citizen Science platforms for recording species occurrences. Moreover, information on biotic interactions can also be derived from the literature, and then incorporated directly in GloBI by uploading a template spreadsheet created from a standard database generated for this purpose.
At the Alien-CSI Hackathon, information available in GloBI concerning the interaction of *V. velutina* with other species were updated, by gathering information from the literature and by adopting the template and the procedure described in the [GloBI’s GitHub repository](https://github.com/globalbioticinteractions/template-dataset).
Interactions derived from the following references were added: [@ueno2015flower], [@macia2019exploitation], [@wei2019diversity], [@chen2020flip] and [@ries2021first]. By March 2022, GloBI included 2,990 biotic interactions on *V. velutina* (Table 1) derived from iNaturalist and from the literature (Table 2).

**Table 1**: Biotic interactions on *V. velutina* available in GloBI by March 2022, and grouped by typology of interaction: predation, flower visitation or seed dispersal, parasitism, nesting habitat, or generic interactions.

| **Typology of biotic interaction** | **Interaction category** | **Number of GloBI records** |
| --- | --- | :-: |
| Predation | eatenBy | 2277 |
| Predation | preyedUponBy | 137 |
| Predation | eats | 1 |
| Predation | preysOn | 4 |
| Flower visitation or seed dispersal | flowersVisitedBy | 172 |
| Flower visitation or seed dispersal | visitedBy | 9 |
| Flower visitation or seed dispersal | mutualistOf | 1 |
| Parasitism | hasVector | 2 |
| Parasitism | hasHost | 20 |
| Parasitism | endoparasiteOf | 1 |
| Nesting habitat | hasHabitat | 22 |
| Generic interactions | interactsWith | 344|


**Table 2**: Sources from which *V. velutina* interactions were derived.

| **Source** | **Reference** | **Number of GloBI records** |
| --- | --- | :-: |
| Citizen Science | http://iNaturalist.org | 536 |
| Literature review (26 papers) | [@Preda&Groom2021] | 2408 |
| Literature review (5 papers) | [@Lioy&Preda&Groom2022] | 46 |


# Analysis of *Vespa velutina* predation spectrum

Data derived from GloBI were elaborated for studying the families and species mostly preyed on by *V. velutina*. For each record, the full taxonomic information were retrieved with the `taxise` package of R [@chamberlain2013taxize], by comparing the taxon name of the species that were interacting with *V. velutina* with taxonomic information available on the NCBI (National Center for Biotechnology Information) database.
Afterwards, data were filtered for selecting only insects with an interaction category `eatenBy` and `preyedUponBy` *V. velutina* (Table 3), and grouped for visualizing, through a chord diagram, the families mostly preyed by *V. velutina* (Fig. 1).

**Table 3**: Order of insects preyed by *V. velutina* and number of interactions recorded on GloBI.

| Insect's order | n. records | Insect's order | n. records | Insect's order | n. records |
| --- | :-: | --- | :-: | --- | :-: | 
| Hymenoptera | 1346 | Mecoptera | 14 | Neuroptera | 2 |
| Diptera | 767 | Orthoptera | 13 | Blattodea | 1 |
| Hemiptera | 31 | Trichoptera | 8 | Odonata | 1 |
| Lepidoptera | 26 | Mantodea | 5 | Psocoptera | 1 |
| Coleoptera | 14 | Dermaptera | 2 | NA | 4 |


**Figure 1**: Chord diagram for visualizing the orders and families of insects mostly preyed on by *V. velutina*:  Hymenoptera (blue), Diptera (green), other taxa (pink).

![chord_diagram_predation](https://user-images.githubusercontent.com/98174736/163976425-c463b503-9da7-4411-858d-08c29bdbf039.png)







Please separate paragraphs with a double line.

Please keep sections to a maximum of three levels, even better if only two levels.

### Subsection level 3

Please keep sections to a maximum of three levels.

## Tables, figures and so on

Please remember to introduce tables (see Table 1) before they appear on the document. We recommend to center tables, formulas and figure but not the corresponding captions. Feel free to modify the table style as it better suits to your data.

Table 1
| Header 1 | Header 2 |
| -------- | -------- |
| item 1 | item 2 |
| item 3 | item 4 |

Remember to introduce figures (see Figure 1) before they appear on the document. 

![BioHackrXiv logo](./biohackrxiv.png)
 
Figure 1. A figure corresponding to the logo of our BioHackrXiv preprint.

Figure 2: The interaction network of Vespa Velutina in Belgium, alien species are highlighted in orange.

Figure 3: The interaction network of Vespa Velutina in Belgium, in red the species are highlighted which are directly linked to Vespa Velutina.

Figure 4: The interaction network of Vespa Velutina in Belgium, colors highlight different modules.

Figure 5: The interaction network of Vespa Velutina in Belgium, natura 2000 species are labelled with species name.

Figure 6: The interaction network of Vespa Velutina in Belgium, color highlights kingdom (green: plants, pink: animals, blue: fungi)

Figure 7: The interaction network of Vespa Velutina in Belgium, red list species (category vulnerable) in Flanders (Northern Belgium) are labelled.

Figure 8: Hypothetical interaction network of Vespa Velutina in Romania, based on current interaction network in Belgium. Species which directly link with Vespa Velutina are colored red.

Figure 9:  Hypothetical interaction network of Vespa Velutina in Romania, colors highlight different modules.

# Other main section on your manuscript level 1

Feel free to use numbered lists or bullet points as you need.
* Item 1
* Item 2

# Discussion and/or Conclusion

We recommend to include some discussion or conclusion about your work. Feel free to modify the section title as it fits better to your manuscript.

# Future work

And maybe you want to add a sentence or two on how you plan to continue. Please keep reading to learn about citations and references.

For citations of references, we prefer the use of parenthesis, last name and year. If you use a citation manager, Elsevier – Harvard or American Psychological Association (APA) will work. If you are referencing web pages, software or so, please do so in the same way. Whenever possible, add authors and year. We have included a couple of citations along this document for you to get the idea. Please remember to always add DOI whenever available, if not possible, please provide alternative URLs. You will end up with an alphabetical order list by authors’ last name.

# Jupyter notebooks, GitHub repositories and data repositories

* Please add a list here
* Make sure you let us know which of these correspond to Jupyter notebooks. Although not supported yet, we plan to add features for them
* And remember, software and data need a license for them to be used by others, no license means no clear rules so nobody could legally use a non-licensed research object, whatever that object is

# Acknowledgements
This paper is a product of the COST Action CA17122 - Alien-CSI supported by COST (European Cooperation in Science and Technology) <[www.cost.eu](https://www.cost.eu/)>

# References




