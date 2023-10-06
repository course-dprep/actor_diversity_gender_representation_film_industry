library(dplyr)
library(tidyverse)
library(ggplot2)

merged_ds <- read_csv("gen/data-preparation/output/Merged_dataset.csv")

View(merged_ds)

#Filterting out rows where movie does not have a release year
complete_ds <- merged_ds%>%filter(!is.na(startYear))

#
#Aggregating based on race and movie release date for then analyzing diversity change over time
year_race <- complete_ds%>% group_by(CHARACTER_RACE, startYear)%>%summarize( actor_count = n())
View(year_race)

#counting total actors per year
total_year_actors <- complete_ds%>% group_by(startYear)%>%summarize(actor_total = n())
View(total_year_actors)

#joining summarized & aggregated subsets
race_yearly_trend <- total_year_actors %>% inner_join(year_race, by = 'startYear')%>%arrange(startYear)
View(race_yearly_trend)

#calculating race proportions for each year based on the total actor count, used as input for Shannon Index
race_yearly_trend<- race_yearly_trend%>%mutate(race_prop =actor_count/actor_total)%>%mutate(pLnp = (-1*race_prop)*log(race_prop))%>%filter(startYear > 1970)
View(race_yearly_trend)

#computing Shannon Index for each year
year_race_diversity<- race_yearly_trend%>%group_by(startYear)%>%summarize(Shannon_Index = sum(pLnp), actor_total= actor_total )%>% distinct (startYear, .keep_all = TRUE) %>% filter(startYear > 1970 & startYear <2023 )
View(year_race_diversity)


#Race Diversity Analysis - Plotting Shannon Index change based on Movie release year to observe trends
ggplot(year_race_diversity, aes(x= startYear, y=Shannon_Index)) + geom_line() +geom_point() + geom_smooth(method =lm , color = 'darkgreen', linetype ='dashed') + ylab('Diversity - Shannon Index') + xlab('Movies Release Year') + ggtitle("Actors' Race/Ethnicity Diversity Over Time")
ggplot(year_race_diversity, aes(x= startYear, y=Shannon_Index)) + geom_point(shape=16 ,size= 2, color = 'blue' ) + geom_smooth(method =lm , color = 'darkblue', linetype ='dashed') + ylab('Diversity - Shannon Index') + xlab('Movies Release Year') + ggtitle("Actors' Race/Ethnicity Diversity Over Time")

#Race Diversity Analysis - Performing linear regression analysis on Shannon Index (dependent variable) and how Movie release Year (Independent variable) explains that change
race_yearlm1 <- lm(Shannon_Index ~ startYear, data = year_race_diversity ); summary(race_yearlm1)


#Gender Representation Analysis
#Aggregating based on gender and movie release date for then analyzing gender representation change over time
year_gender <- complete_ds %>% group_by(GENDER, startYear)%>%summarize( gender_count = n())
View(year_gender)

#calculating gender proportion (representation) for each year
gender_yearly_trend <- total_year_actors %>% inner_join(year_gender, by = 'startYear')%>%mutate(gender_prop = gender_count/actor_total) %>% filter(startYear >1970 & startYear <2023) %>% arrange(startYear)
View(gender_yearly_trend)

#subsetting into Female gender representation for inputs into linear model
female_rep_yearly_trend <-gender_yearly_trend %>% filter(GENDER == 'f')
View(female_rep_yearly_trend)

#Plotting gender proportion trend through time
ggplot(gender_yearly_trend, aes(x = startYear, y= gender_prop, color = GENDER)) + geom_line() + geom_smooth(method = loess) + ylab('Gender representation (%)') + xlab('Movie Release Year') + ggtitle("Gender Proportions Over Time")
ggplot(female_rep_yearly_trend, aes(x= startYear, y=gender_prop)) + geom_point() + geom_smooth(method =lm) + ylab('Female Gender representation (%)') + xlab('Movie Release Year') + ggtitle("Female Gender Representation Over Time")

#Gender Diversity Analysis - Performing linear regression on Female gender proportion (dependent variable) and how Movie release Year (Independent variable) explains that change
gender_yearlm2 <- lm(gender_prop ~ startYear, data = female_rep_yearly_trend); summary(gender_yearlm2)
