## SETUP

library(tidyverse)
library(dplyr)
library(readr)

## Load files
title_basics <- read_tsv("data/TitleBasics.tsv")
name_basics <- read_tsv("data/NameBasics.tsv")
actors <- read_tsv("data/Actors.tsv")

## Transforming Actors dataset to make it merge-ready
# Create Actor_ID variable by extracting actor ID from IMDB_actor_homepage and reorder columns
actor_ID <- str_sub(actors$IMDB_ACTOR_HOMEPAGE, start = 26, end= 34)
actor_ID_df <- data.frame(actor_ID)
actors<- actors %>% add_column(actor_ID_df, .after= 'POLYGRAPH_.WORDS')
actors <- actors %>% relocate(actor_ID, .before = ACTOR_NAME)
#removing duplicate actors for different roles
actors_dist <- actors %>% distinct(actor_ID, .keep_all = TRUE)


## Transforming the data for name_basics to make it merge-ready
# Split the knownForTitles column by "," separator
name_split_movies <- name_basics %>%
  mutate(knownForTitles = strsplit(knownForTitles, ",")) %>%
  unnest(knownForTitles)

## Start merging the datasets
# Joining actors info with name_basics
hollywood_actors_names <- name_split_movies%>%inner_join(actors_dist, by = c('nconst'= 'actor_ID'))

# Joining actor full data with title_basics(Movie titles info)
actors_names_titles <- hollywood_actors_names %>% inner_join(title_basics, by = c('knownForTitles'= 'tconst'))%>%transform(startYear = as.numeric(startYear))
actors_names_titles <- replace(actors_names_titles, is.na(actors_names_titles),'NA')

# Save output merged dataset
dir.create('gen')
write_csv(actors_names_titles, "gen/data-preparation/output/Merged_dataset.csv")
 
                