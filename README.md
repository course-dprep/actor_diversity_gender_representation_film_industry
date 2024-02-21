[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=11726018&assignment_repo_type=AssignmentRepo)
# Actor diversity and gender representation in the film industry

![](https://upload.wikimedia.org/wikipedia/commons/6/69/IMDB_Logo_2016.svg)

## Table of content

[1) The project](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#1-the-project)

-   [Project description and research motivation](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#project-description-and-research-motivation)

-   [Research question](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#research-question)

[2) Method](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#2-method)

-   [Datasets](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#datasets)

-   [Variables](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#variables)

-   [Research method](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#research-method)

[3) Results and interpretation](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#3-results-and-interpretation)

-   [Diversity](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#diversity)

-   [Gender](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#gender)

[4) Repository structure](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#4-repository-structure)

[5) Running instructions](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#5-running-instructions)

-   [System Requirements](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#system-requirements)

-   [Dependencies](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#dependencies)

-   [Running the code](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#running-the-code)

[6) Resources](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#6-resources)

[7) Authors](https://github.com/course-dprep/actor_diversity_gender_representation_film_industry#7-authors)

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

The results of the regression analysis show that there is a significant positive effect of the release year of a movie on the Shannon index, and therefore the actors' race diversity. However, the increases in diversity is very minimal each year.

#### *Gender*

The results of the regression analysis show that there is a significant positive effect of the release year of a movie on the female gender. However, the current gap between male and female is still considerably large.

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

1.  **LaTeX**

To run our project on Windows, ensure LaTeX is installed using the following instructions:

-   *For General R Users:*
    You can set up LaTeX by running **`tinytex::install_tinytex()`** in R.

-   *For RStudio Users:*
    To set up LaTeX in RStudio, run **`tinytex::install_tinytex()`** in the RStudio console.

2.  **Pandoc**

To run our Makefile on all computers, install Pandoc from <https://pandoc.org/installing.html> following the instructions for your specific operating system.

3.  **XQuarts**

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
