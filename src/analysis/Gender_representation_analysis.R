## SETUP
library(dplyr)
library(tidyverse)
library(ggplot2)

#Gender Representation Analysis

# Load required merged dataset
merged_ds <- read_csv("gen/data-preparation/output/Merged_dataset.csv")

#Filterting out rows where movie does not have a release year
complete_ds <- merged_ds%>%filter(!is.na(startYear))

#counting total actors per year
total_year_actors <- complete_ds%>% group_by(startYear)%>%summarize(actor_total = n())

#Aggregating based on gender and movie release date for then analyzing gender representation change over time
year_gender <- complete_ds %>% group_by(GENDER, startYear)%>%summarize( gender_count = n())

#calculating gender proportion (representation) for each year
gender_yearly_trend <- total_year_actors %>% inner_join(year_gender, by = 'startYear')%>%mutate(gender_prop = gender_count/actor_total) %>% filter(startYear >1970 & startYear <2023) %>% arrange(startYear)

#subsetting into Female gender representation for inputs into linear model
female_rep_yearly_trend <-gender_yearly_trend %>% filter(GENDER == 'f')

#Plotting gender proportion trend through time
plot1 <- ggplot(gender_yearly_trend, aes(x = startYear, y= gender_prop, color = GENDER)) + geom_line() + geom_smooth(method = loess) + ylab('Gender representation (%)') + xlab('Movie Release Year') + ggtitle("Gender Proportions Over Time")
plot2 <- ggplot(female_rep_yearly_trend, aes(x= startYear, y=gender_prop)) + geom_point() + geom_smooth(method =lm) + ylab('Female Gender representation (%)') + xlab('Movie Release Year') + ggtitle("Female Gender Representation Over Time")

#Export the plots to visual documents at a specific location
ggsave("gen/analysis/output/gender_representation_plot1.png", plot = plot1, width = 8, height = 6, units = "in")
ggsave("gen/analysis/output/gender_representation_plot2.png", plot = plot2, width = 8, height = 6, units = "in")

#Gender Diversity Analysis - Performing linear regression on Female gender proportion (dependent variable) and how Movie release Year (Independent variable) explains that change
gender_yearlm2 <- lm(gender_prop ~ startYear, data = female_rep_yearly_trend); summary(gender_yearlm2)
