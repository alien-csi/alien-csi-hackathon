# Secondary data
Citizen science as well as other more or less open data sources from social media, especially photos, video or audio recordings, contain valuable information that goes beyond the recording of a species at a specific time and place. For example, a picture may show the interaction of a species (pollinator on plant, parasite on host, etc.), morphological features such as colour spectra or habitat connections. This additional information, the secondary data, is usually collected by chance during a primary observation. Research in this area is picking up speed and I would like, beyond a potential paper, to use the hackathon to develop some ideas on the direction our collaboration in this area could take, e.g. for a network or a research grant.

### Partners
* ? whoever enjoys it :-)

### Ideas for work packages
* Extracting image-based secondary data of plant-pollinator interactions from iNaturalist and other social media images
* Identifying bias and developing an automated sampling approach based on results
* Developing potential workflows of 'hybrid intelligence' (in a very simple sense) for human verification of results
* maybe: integrate data for less descriptive questions, e.g. species distribution, phenology

### Methodology
1. Identify a potential species pair/group (e.g. native vs invasive) and a corresponding potential interaction (pollinating, resting, visiting, parasitise)
2. Identify data sources (citizen science platforms, social media, etc.) and how to access the images 
3. Identify potential bias (temporal, spatial) in these data sources
4. Create workflow of downloading/subsampling target species images from social media/citizen science platforms to push into image-based-plant-identification apps (e.g. PlantNet)
5. Develop a method to work with the probabilities (scores) of the plants determined by the app; e.g. could there be a statistical way to resolve this? What would be an adequate score threshold?
6. "Hybrid intelligence": Verifying the results, two-ways: 1) by experts manually 2) by playing back it into the community. 
7. Integrate the data with other "professional" data sources if possible (GLOBI).

#### R packages
* *[iNatTools](https://rdrr.io/github/pjhanly/iNatTools/)*
* *[rinat](https://CRAN.R-project.org/package=rinat)*
* *[plantNet](https://github.com/BiologicalRecordsCentre/plantnet)*


### Inspiration/Support needed 
1. Example species: Which (invasive) species/pair/group would be adequate? 
2. Ecological questions: Which interaction might be interesting beyond plant-pollinator? 
3. Analogue plant/species identification skills
4. Statistic/Programming skills

### Outputs


### References
(pretty general for now)
* *[iEcology](https://doi.org/10.1016/j.tree.2020.03.003.)*
* *[iEcology example](https://doi.org/10.1016/B978-0-12-819166-8.00169-9)*
* *['Hybrid intelligence'](https://cra.org/ccc/wp-content/uploads/sites/2/2021/03/CCC-TransitionPaperImagine-All-the-People.pdf)*
* *[iNaturalist secondary data example](https://www.nature.com/articles/s41598-021-82491-y)*

