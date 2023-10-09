## SETUP
library(dplyr)
library(tidyverse)
library(ggplot2)

# Load required merged dataset
merged_ds <- read_csv("gen/data-preparation/output/Merged_dataset.csv")

#Filterting out rows where movie does not have a release year
complete_ds <- merged_ds%>%filter(!is.na(startYear))

#Aggregating based on race and movie release date for then analyzing diversity change over time
year_race <- complete_ds%>% group_by(CHARACTER_RACE, startYear)%>%summarize( actor_count = n())

#counting total actors per year
total_year_actors <- complete_ds%>% group_by(startYear)%>%summarize(actor_total = n())

#joining summarized & aggregated subsets
race_yearly_trend <- total_year_actors %>% inner_join(year_race, by = 'startYear')%>%arrange(startYear)

#calculating race proportions for each year based on the total actor count, used as input for Shannon Index
race_yearly_trend<- race_yearly_trend%>%mutate(race_prop =actor_count/actor_total)%>%mutate(pLnp = (-1*race_prop)*log(race_prop))%>%filter(startYear > 1970)

#computing Shannon Index for each year
year_race_diversity<- race_yearly_trend%>%group_by(startYear)%>%summarize(Shannon_Index = sum(pLnp), actor_total= actor_total )%>% distinct (startYear, .keep_all = TRUE) %>% filter(startYear > 1970 & startYear <2023 )

#Race Diversity Analysis - Plotting Shannon Index change based on Movie release year to observe trends
plot1 <- ggplot(year_race_diversity, aes(x= startYear, y=Shannon_Index)) + geom_line() +geom_point() + geom_smooth(method =lm , color = 'darkgreen', linetype ='dashed') + ylab('Diversity - Shannon Index') + xlab('Movies Release Year') + ggtitle("Actors' Race/Ethnicity Diversity Over Time")
plot2 <- ggplot(year_race_diversity, aes(x= startYear, y=Shannon_Index)) + geom_point(shape=16 ,size= 2, color = 'blue' ) + geom_smooth(method =lm , color = 'darkblue', linetype ='dashed') + ylab('Diversity - Shannon Index') + xlab('Movies Release Year') + ggtitle("Actors' Race/Ethnicity Diversity Over Time")

#Export the plots to visual documents at a specific location
ggsave("gen/analysis/output/race_diversity_plot1.png", plot = plot1, width = 8, height = 6, units = "in")
ggsave("gen/analysis/output/race_diversity_plot2.png", plot = plot2, width = 8, height = 6, units = "in")


#Race Diversity Analysis - Performing linear regression analysis on Shannon Index (dependent variable) and how Movie release Year (Independent variable) explains that change
race_yearlm1 <- lm(Shannon_Index ~ startYear, data = year_race_diversity ); summary(race_yearlm1)
