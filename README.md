# Actor diversity and gender representation in the film industry

![](https://upload.wikimedia.org/wikipedia/commons/6/69/IMDB_Logo_2016.svg)

## Table of content

[1) The project](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#1-the-project)

-   [Project description and research motivation](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#project-description-and-research-motivation)

-   [Research question](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#research-question)

[2) Method](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#2-method)

-   [Datasets](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#datasets)

-   [Variables](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#variables)

-   [Research method](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#research-method)

[3) Results and interpretation](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#3-results-and-interpretation)

-   [Diversity](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#diversity)

-   [Gender](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#gender)

[4) Repository structure](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#4-repository-structure)

[5) Running instructions](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#5-running-instructions)

-   [System Requirements](https://github.com/course-dprep/acourse-dprep/actor_diversity_gender_representation_film_industry#system-requirements)

-   [Dependencies](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#dependencies)

-   [Running the code](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#running-the-code)

[6) Resources](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#6-resources)

[7) Authors](https://github.com/course-dprep/course-dprep/actor_diversity_gender_representation_film_industry#7-authors)

## 1) The project

#### *Project description and research motivation*

Diversity in the film industry has been a topic of interest in recent years. Since, many discussions arise from diversity topics. On the one hand, ethnic minorities may feel underrepresented in the film industry. On the other hand, people may claim diversity is being forced when people of color enter settings previously deemed "white" in famous historical depictions, for example in the recent live action remake of 'The Little Mermaid'. Essentially, the film sector serves as a type of mirror for our culture. People typically follow or are influenced by what they see daily. People probably watch entertainment the most, therefore diversity and representation are especially important there. The ability for viewers to recognize themselves and their experiences on screen fosters a sense of connection and understanding, which is why representation in terms of diversity as well as gender is important. Analysis of whether and how actor diversity and gender representation has changed throughout the years within the film industry is therefore quite intriguing.

#### *Research Question*

This project is aimed at the following research question:

'How does the movie release year influence the actor diversity, measured by the Shannon index, and gender representation in the film industry?'

## **2) Method**

#### *Datasets*

From the IMDb Non-Commercial Datasets the following datasets were used:

-   name.basics.tsv.gz

-   title.basics.tsv.gz

Additionally, the Harvard Actor Racial Line Dataset was used.

#### *Variables*

The dataset in its entirety consists of 31 variables. However, for this analysis a selection of 3 relevant variables will be used, namely:

| *Variables*    | *Description*                 |
|----------------|-------------------------------|
| CHARACTER_RACE | The ethnicity of the actor    |
| GENDER         | The gender of the actor       |
| startYear      | The release year of the movie |

The Shannon index is an index that measures diversity, which is based on ethnicity in this research. This will be calculated using the 'CHARACTER_RACE' variable from the dataset.

The formula to calculate the Shannon index is:

$$
H = -\sum_{i=1}^{n} (p_i \cdot \ln(p_i))
$$

Where:

-   H is the Shannon index, which represents the actor diversity.

-   S is the number of different categories.

-   pi represents the proportion of the total occurrences that belong to the ith category, which is calculated by the proportion of the "CHARACTER_RACE" variable in every year.

#### *Research Method*

Regression analysis will be performed on the dataset to reach a conclusion. Regression analysis is essential for understanding the factors influencing actor diversity in movies when using the 'Shannon index' and 'gender' as the dependent variables. We will perform two separate analysis to investigate the link between the independent variable startYear, and the two dependent variables, namely 'Shannon index' and 'gender'. Using this statistical method since it allows us to measure the influence of these variables and find important predictors. This approach makes it possible to gain data-driven insights regarding the diversity of the film industry.

The formula for the linear regression is:

$$ Y = \beta_0 + \beta_1X_1 $$

Where:

-   Y is the dependent variable, which is the Shannon index or the female gender.

-   β0 is the intercept.

-   β1 is the coefficient for the independent variable (startYear).

-   X1 is the value of the independent variable (startYear).

## **3) Results and interpretation**

#### *Diversity*

To analyze the diversity for each year the Shannon index for each year was initially calculated. Thereafter, we decided to filter out data points prior to 1971 and from 2023 due to limited information on actors. As the graph in figure 1 shows, the diversity increases over time but not consistently. The Shannon index was below 0.3 in 1970 and it turned out to be close to one in 2020.  It represents a total increase of \~ 0.7 half a century. However, the diversity trend was not consistent, in 1980 the index reached the lowest level and it dropped down again in 2010.

![*Figure 1: Actor's race/ethnicity diversity over time (line plot)*](gen/analysis/output/race_diversity_plot1.png)

The results of the regression analysis computed the following formula for diversity: Y1 = -24.263 + 0.01259X1 Where Y1 is the Shannon index and X1 is the movie release year.

The p-value in the model is below the threshold of 0.05 so our results are statistically significant and the null hypothesis can be rejected; meaning that the year a movie is released has an effect on the actors' race diversity index because the Shannon index clearly increases over time indicating a positive effect on actor race diversity. Particularly, if the start year goes up by one unit, the Shannon index increases by 0.0125.

Furthermore, The R squared is equal to 0.7 meaning that the proportion of variation in the dependent variable that can be explained or predicted by the regression model is equal to 0.7; the prediction cannot be 100% accurate and only additional variables could improve the model.

#### *Gender*

The graph in figure 2 shows that the gap in gender representation between male and female is decreasing over time. However, the reduction is not so significant since the gap is still big in 2020. Figure 3 shows the increase in the female gender representation over time.

![*Figure 2: Gender representation over time*](gen/analysis/output/gender_representation_plot1.png)

![*Figure 3: Female gender representation over time*](gen/analysis/output/gender_representation_plot2.png)

The results of the regression analysis computed the following formula for female gender: Y2 = -3.246 + 0.00179X1 Where Y2 is the female gender representation and X1 is the movie release year.

The p-value in this model is below the threshold of 0.05 so the results are statistically significant and the null hypothesis can be rejected; this means that the year a movie is released has an effect on the female gender representation because the female gender representation increases over time. In particular, if the start year goes up by one unit, the female gender representation increases by 0.00178.

Furthermore, The R squared is equal to 0.20 meaning that the proportion of variation in the dependent variable that can be explained or predicted by the regression model is equal to 0.20; the prediction cannot be 100% accurate.

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

#### System Requirements

To run our Makefile on all computers, install Pandoc from <https://pandoc.org/installing.html> following the instructions for your specific operating system.

To run our Makefile on Linux or Mac, install XQuartz from [https://www.xquartz.org](https://www.xquartz.org/), then follow on-screen instructions.

#### *Dependencies*

The makefile runs an Rscript which automatically installs all missing packages in R. Our project depends on the following packages;

```         
library(tidyverse)
library(readr)
library(dyplyr)
library(tibble)
library(stringr)
library(ggplot2)
```

#### *Running the code*

Cloning the repository

1.  Open your terminal (on mac) / Gitbash (on windows)
2.  Set your working directory to the preferred location
3.  Type `git clone https://github.com/course-dprep/actor_diversity_gender_representation_film_industry`

Running the makefile

1.  Change the working directory of your terminal to `actor_diversity_gender_representation_film_industry`
2.  Type `make`

## **6) Resources**

-   IMDb Non-Commercial Datasets: <https://developer.imdb.com/non-commercial-datasets/>

-   Harvard Actor Racial Line Dataset: <https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/KERZQY/E3ODSJ>

## **7) Authors**

This repository was created for the course Data Preparation and Workflow Management taught by Hannes Datta, at the Tilburg School of Economics and Management, as part of the Master's program Marketing Analytics. This repository is maintained by Team 13, which consists of:

-   Stefano Greco Barriada

-   Stan van Goor

-   Corinne Inzirillo

-   Arda Reyhan
