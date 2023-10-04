## THIS FILE DOWNLOADS THE 4 RAW DATASETS AND SAVES THEM AS CSV FILES

download_data <- function(url, filename){
  download.file(url = url, destfile = paste0(filename, ".tsv"))
}

name_basics <- "https://datasets.imdbws.com/name.basics.tsv.gz"
title_basics <- "https://datasets.imdbws.com/title.basics.tsv.gz"
actors <- "https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/KERZQY/E3ODSJ"
dir.create('data')
download_data(name_basics, "data/NameBasics")
download_data(title_basics, "data/TitleBasics")
download_data(actors, "data/Actors")