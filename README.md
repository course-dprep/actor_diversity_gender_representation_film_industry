# Diversity of actors in the film industry

![](https://upload.wikimedia.org/wikipedia/commons/6/69/IMDB_Logo_2016.svg)

## Table of content

[1) The project](https://github.com/course-dprep/actor_diversity_film_industry#1-the-project)

-   [Project description and research motivation](https://github.com/course-dprep/actor_diversity_film_industry#project-description-and-research-motivation)

-   [Research question](https://github.com/course-dprep/actor_diversity_film_industry#research-question)

[2) Method](https://github.com/course-dprep/actor_diversity_film_industry#2-method)

-   [Datasets](https://github.com/course-dprep/actor_diversity_film_industry#datasets)

-   [Variables](https://github.com/course-dprep/actor_diversity_film_industry#variables)

-   [Research method](https://github.com/course-dprep/actor_diversity_film_industry#research-method)

[3) Results and interpretation](https://github.com/course-dprep/actor_diversity_film_industry#3-results-and-interpretation)

[4) Repository structure](https://github.com/course-dprep/actor_diversity_film_industry#4-repository-structure)

[5) Running instructions](https://github.com/course-dprep/actor_diversity_film_industry#5-running-instructions)

-   [Dependencies](https://github.com/course-dprep/actor_diversity_film_industry#dependencies)

-   [Running the code](https://github.com/course-dprep/actor_diversity_film_industry#running-the-code)

[6) Sources](https://github.com/course-dprep/actor_diversity_film_industry#6-sources)

[7) Authors](https://github.com/course-dprep/actor_diversity_film_industry#7-authors)

## 1**) The project**

#### *Project description and research motivation*

Diversity in the film industry has been a topic of interest in recent years. Since, many discussions arise from diversity topics. On the one hand, ethnic minorities may feel underrepresented in the film industry. On the other hand, people may claim diversity is being forced when people of color enter settings previously deemed "white" in famous historical depictions, for example in the recent live action remake of 'The Little Mermaid'. Essentially, the film sector serves as a type of mirror for our culture. People typically follow or are influenced by what they see daily. People probably watch entertainment the most, therefore diversity and representation are especially important there. The ability for viewers to recognize themselves and their experiences on screen fosters a sense of connection and understanding, which is why representation is important. Analysis of whether and how diversity has changed throughout the years within the film industry is therefore quite intriguing.

#### *Research Question*

This project is aimed at the following research question:

How does the release year of movies influence the actor diversity, divided into the Shannon index and Gender, in the film industry?

## **2) Method**

#### *Datasets*

From the IMDb Non-Commercial Datasets the following datasets were used:

-   name.basics.tsv.gz

-   title.basics.tsv.gz

Additionally, the Harvard Actor Racial Line Dataset was used.

#### *Variables*

The merged dataset in its entirety consists of 31 variables. However, for this analysis a selection of 3 relevant variables will be used, namely:

| *Variables*    | *Description*                 |
|----------------|-------------------------------|
| Character_race | The ethnicity of the actor    |
| Gender         | The gender of the actor       |
| Start_year     | The release year of the movie |

The Shannon index is an index that measures diversity, which is based on ethnicity in this research. This has to be calculated using the 'character_race' variables from the dataset.

The formula to calculate the Shannon index is:

![](https://d2vlcm61l7u1fs.cloudfront.net/media%2Fbc8%2Fbc85be7f-45af-4480-9af6-2fbf81af0717%2FphpT6oANu.png)

Where:

-   H is the Shannon index, which represents the ethnic diversity.

-   S is the number of different categories.

-   pi​ represents the proportion of the total occurrences that belong to the ith category.

#### *Research Method*

Regression analysis will be performed on the dataset to reach a conclusion. Regression analysis is essential for understanding the factors influencing actor diversity in movies when using the Shannon index and Gender as the dependent variables. We will perform two separate analysis to investigate the link between the independent variable Year, and the two dependent variables, namely Shannon index and Gender. Using this statistical method since it allows us to measure the influence of these variables and find important predictors. This approach makes it possible to gain data-driven insights regarding the diversity of the entertainment industry.

The formula for the linear regression is:

Y = β0 + β1X1

Where:

-   Y is the dependent variable, which is the Shannon index.

-   β0 is the intercept.

-   β1 is the coefficient for the independent variables

-   X1 is the value of the independent variable

## **3) Results and interpretation**

## **4) Repository Structure**

```         
├── data
├── gen
   ├── analysis
   ├── data-preparation
   └── paper
└── src
   ├── analysis
   ├── data-preparation
   └── paper
├── .gitignore
├── README.md
├── makefile
```

## **5) Running instructions**

#### *Dependencies*

The following packages in R should be installed, by using install.packages(), before running the code. Thereafter, you can load the packages by running the following lines of code:

```         
library(tidyverse)
library(readr)
library(here)
library(tinytex)
library(stringr)
```

#### *Running the code*

Cloning the repository

1.  Open your terminal (on mac) / Gitbash (on windows)
2.  Set your working directory to the preferred location
3.  Type `git clone https://github.com/course-dprep/actor_diversity_film_industry`

Running the makefile

1.  Change the working directory of your terminal to `actor_diversity_film_industry`
2.  Type `make`

## **6) Sources**

-   IMDb Non-Commercial Datasets: <https://developer.imdb.com/non-commercial-datasets/>

-   Harvard Actor Racial Line Dataset: <https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/KERZQY/E3ODSJ>

## **7) Authors**

This repository was created for the course Data Preparation and Workflow Management taught by Hannes Datta, at the Tilburg School of Economics and Management, as part of the Master's program Marketing Analytics. This repository is maintained by Team 13 which consists of:

-   Stefano Greco Barriada

-   Stan van Goor

-   Corinne Inzirillo

-   Arda Reyhan
