##### ANALYSIS OF VESPA VELUTINA INTERACTIONS FROM GLOBI INFORMATION (https://www.globalbioticinteractions.org/) #####
# Author: Simone Lioy, University of Turin
# Date: 2022-03-20
#
# Index:
# 1) Adjust the full taxonomy of the data downloaded from GLOBI
# 2) Check all interactions available for V.velutina
# 3) Analysis of Vespa velutina predation spectrum on Insects


##### 1) Adjust the full taxonomy of the data downloaded from GLOBI ####

rm(list = ls())

{
library(readr)
library(tidyverse)
library(ritis)
library(taxize)
library(circlize)
}

# Download data (csv format) directly from GLOBI (https://www.globalbioticinteractions.org/),
# rename it (GLOBI_interaction_velutina.csv) and import the csv file in R

GLOBI_interaction_velutina <- read_csv("GLOBI_interaction_velutina.csv")
GLOBI_interaction_velutina$target_taxon <- "Vespa velutina"

# Select the variables of interest

db <- GLOBI_interaction_velutina %>% select(target_taxon, source_taxon_name, interaction_type)

# Retrieve taxonomic information from NCBI. The database is divided in small databases and then merged toghether
# since the command tax_name might lead to some errors due to server connection

# Set the API key for NCBI (for fast downloads)
# The command use_entrez() brings to the NCBI site where to login and ask for an API key
# enter the key into the .Renviron file of your computer, by writing the following line
# ENTREZ_KEY=write_the_number_of_your_personal_api_key

rank_ref #List of the taxonomic information available

# Split GLOBI data into 6 dataframes, retrive taxonomic information and merge again the data

db_1 <- db[1:500,]
species_1 <- db_1$source_taxon_name #List of species with information to be retrieved
db_taxonomy_1 <- tax_name(species_1,
                        get = c("genus","family","order","class","phylum","kingdom"),
                        db="ncbi") # could take a while for downloading information

db_2 <- db[501:1000,]
species_2 <- db_2$source_taxon_name
db_taxonomy_2 <- tax_name(species_2,
                          get = c("genus","family","order","class","phylum","kingdom"),
                          db="ncbi")

db_3 <- db[1001:1500,]
species_3 <- db_3$source_taxon_name
db_taxonomy_3 <- tax_name(species_3,
                          get = c("genus","family","order","class","phylum","kingdom"),
                          db="ncbi")

db_4 <- db[1501:2000,]
species_4 <- db_4$source_taxon_name
db_taxonomy_4 <- tax_name(species_4,
                          get = c("genus","family","order","class","phylum","kingdom"),
                          db="ncbi")

db_5 <- db[2001:2500,]
species_5 <- db_5$source_taxon_name
db_taxonomy_5 <- tax_name(species_5,
                          get = c("genus","family","order","class","phylum","kingdom"),
                          db="ncbi")

db_6 <- db[2501:2990,]
species_6 <- db_6$source_taxon_name
db_taxonomy_6 <- tax_name(species_6,
                          get = c("genus","family","order","class","phylum","kingdom"),
                          db="ncbi")

# Merge the dataframe

db_taxonomy_tot <- rbind(db_taxonomy_1,db_taxonomy_2,db_taxonomy_3,db_taxonomy_4,db_taxonomy_5,db_taxonomy_6)
db2 <- cbind(db, db_taxonomy_tot)

rm(db_1,db_2,db_3,db_4,db_5,db_6,species_1,species_2,species_3,species_4,species_5,species_6,
   db_taxonomy_1,db_taxonomy_2,db_taxonomy_3,db_taxonomy_4,db_taxonomy_5,db_taxonomy_6)

##### 2) Check all interactions available for V.velutina #####

# remove NA rows without taxonomic information

db2 <- subset(db2, !is.na(db2$kingdom)) # 2934 records

# Summary of all the interactions for V. velutina

table(db2$interaction_type)

# Predation:          eatenBy / preyedUponBy
# Flower visitation:  flowersVisitedBy / visitedBy
#
# interactWith is not selected since contains a mix of interactions (predation, flower visitation,
# trees hosting the nest) therefore records could be included just after a one-by-one verification

# export db2 in a csv file
write.csv(db2, file = "GLOBI_interaction_velutina_with_taxonomy.csv", row.names = FALSE)

##### 3) Analysis of Vespa velutina predation spectrum on Insects #####

# Subset data by selecting Insects and the interactions of interest
# In this specific case select: eatenBy, preyedUponBy

db_insects <- subset(db2, class == "Insecta")
db_insects <- subset(db_insects, db_insects[[3]] %in% c("eatenBy", "preyedUponBy"), drop = F) 

#plot chordDiagrams based on orders and families

db_plot <- db_insects %>% select(family,order)
db_plot <- na.omit(db_plot) #remove rows without taxonomic information
interactions_plot <- chordDiagram(db_plot) 

#group taxa for a better visualization

table(db_plot$order)

# keep the order Hymenoptera and Diptera

db_plot <- db_plot %>% mutate(order_reclass = recode(order, 
                                                  "Hymenoptera" = "Hymenoptera",
                                                  "Diptera" = "Diptera",
                                                  .default = "Other taxa"))
table(db_plot$order_reclass)
table(db_plot$family)

# keep the families Apidae and Vespidae for the order Hymenoptera, and the families Calliphoridae,
# Muscidae, Sarcophagidae, Syrphidae for the order Diptera. Families of other orders are classified 
# as other taxa

db_plot <- db_plot %>% 
  mutate(family_reclass = case_when(order == "Hymenoptera" & family == "Apidae" ~ family,
                                    order == "Hymenoptera" & family == "Vespidae" ~ family,
                                    order == "Hymenoptera" & family != c("Apidae","Vespidae")
                                    ~ "Other Hymenoptera",
                                    order == "Diptera" & family == "Calliphoridae" ~ family,
                                    order == "Diptera" & family == "Muscidae" ~ family,
                                    order == "Diptera" & family == "Sarcophagidae" ~ family,
                                    order == "Diptera" & family == "Syrphidae" ~ family,
                                    order_reclass == "Other taxa" ~ "Other taxa",
                                    TRUE ~ "Other Diptera"))
                                    
# Create a color palette for the orders and families of interest

grid.col <- c(Hymenoptera="deepskyblue", Vespidae="deepskyblue3", Apidae="deepskyblue3", 'Other Hymenoptera'="deepskyblue3",
              Diptera="aquamarine", Calliphoridae="aquamarine3", Muscidae="aquamarine3", Syrphidae="aquamarine3", 
              Sarcophagidae="aquamarine3",'Other Diptera'="aquamarine3", 
              'Other taxa'="plum2")

# Plot the final Chord Diagram of the predation spectrum of Vespa velutina

interactions_plot<- chordDiagram(db_plot[,3:4],grid.col = grid.col) #plot with horizontal labels

chordDiagram(db_plot[,3:4], annotationTrack = "grid", preAllocateTracks = 1, grid.col = grid.col)
circos.trackPlotRegion(track.index = 1, panel.fun = function(x, y) {
  xlim = get.cell.meta.data("xlim")
  ylim = get.cell.meta.data("ylim")
  sector.name = get.cell.meta.data("sector.index")
  circos.text(mean(xlim), ylim[1] + .1, sector.name, facing = "clockwise", niceFacing = TRUE, adj = c(-0.5, 0.5))
  circos.axis(h = "top", labels.cex = 0.5, major.tick.length = 0.2, sector.index = sector.name, track.index = 2)
}, bg.border = NA) #plot with vertical labels


# Plot a table to summirise the number of insects preyed by V. velutina in relation to orders and families

table(db_plot$family_reclass, db_plot$order_reclass)


# Analyse the species of the Apidae family

db_apidae <- subset(db2, family == "Apidae")
db_apidae <- db_apidae[,c("source_taxon_name", "family")]

table(db_apidae$source_taxon_name)

ggplot(db_apidae, aes(source_taxon_name)) +
  geom_bar(fill = "#0073C2FF")

# Analyse the species of the Vespidae family

db_vespidae <- subset(db2, family == "Vespidae")
db_vespidae <- db_vespidae[,c("source_taxon_name", "family")]

table(db_vespidae$source_taxon_name)

ggplot(db_vespidae, aes(source_taxon_name)) +
  geom_bar(fill = "#0073C2FF")



