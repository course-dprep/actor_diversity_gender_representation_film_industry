rmarkdown::render('../data-preparation/Data_RMD_files/IMDB_dataset_title_basics.Rmd')

file.copy(from = paste0("../../src/data-preparation/IMDB_dataset_title_basics.pdf"),
          to = paste0("../../gen/data-preparation/output/IMDB_dataset_title_basics.pdf"))

file.remove(from = paste0("../../src/data-preparation/IMDB_dataset_title_basics.pdf"))