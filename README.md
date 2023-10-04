# Diversity of actors in the entertainment industry

![](https://upload.wikimedia.org/wikipedia/commons/6/69/IMDB_Logo_2016.svg)

1.  **The project**

*Project description and research motivation*

Diversity in the entertainment industry has been a topic of interest in recent years. Since, many discussions arise from diversity topics. On the one hand, ethnic minorities may feel underrepresented in the entertainment industry. On the other hand, people may claim diversity is being forced when people of color enter settings previously deemed "white" in famous historical depictions. Essentially, the entertainment sector serves as a type of mirror for our culture. People typically follow or are influenced by what they see daily. People probably watch entertainment the most, therefore diversity and representation are especially important there. The ability for viewers to recognize themselves and their experiences on screen fosters a sense of connection and understanding, which is why representation is important. Analysis of whether and how diversity has changed throughout the years within the entertainment sector is therefore quite intriguing.

*Research Question*

2.  **Method**

*Datasets*

From the IMDb Non-Commercial Datasets the following datasets were used:

-   name.basics.tsv.gz

-   title.basics.tsv.gz

-   title.crew.tsv.gz

Additionally, the Harvard Actor Racial Line Dataset was used.

*Variables*

*Research Method*

Regression analysis will be performed on the dataset to reach a conclusion. Regression analysis is essential for understanding the factors influencing actor diversity in movies when using the Shannon index as the dependent variable. We will investigate the link between independent variables, shown in Table 1, and the Shannon index using this statistical method since it allows us to measure the influence of these variables and find important predictors. This approach makes it possible to gain data-driven insights regarding the diversity of the entertainment industry.

The formula for the multiple linear regression is:

Y = β0 + β1X1 + β2X2 + \... + βn\*Xn 

Where:

-   Y is the dependent variable, which is the Shannon index.

-   β0 is the intercept.

-   β1, β2, \..., βn are the coefficients for the independent variables X1, X2, \..., Xn, respectively (indicated in Table 1)

3.  **Results and interpretation**

4.  **Repository Structure**

5.  **Running instructions**

*Software*

The following packages in R should be installed, by using install.packages(), before running the code. Thereafter, you can load the packages by running the following lines of code:

-   library(tidyverse)

-   library(readr)

-   library(here)

-   library(tinytex)

-   library(stringr)

*Running the code*

6.  **Sources**

-   IMDb Non-Commercial Datasets: <https://developer.imdb.com/non-commercial-datasets/>

-   Harvard Actor Racial Line Dataset: <https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/KERZQY/E3ODSJ>\

7.  **Authors**

This repository was created for the course Data Preparation and Workflow Management taught by Hannes Datta, at the Tilburg School of Economics and Management, as part of the Master's program Marketing Analytics. This repository is maintained by Team 13 which consists of:

-   Stefano Greco Barriada

-   Stan van Goor

-   Corinne Marzia Inzirillo

-   Arda Reyhan
