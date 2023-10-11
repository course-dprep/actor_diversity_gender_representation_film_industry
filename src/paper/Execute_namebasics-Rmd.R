rmarkdown::render('../data-preparation/Data_RMD_files/IMDB_dataset_name.basics.Rmd')

file.copy(from = paste0("../data-preparation/Data_RMD_files/IMDB_dataset_name.basics.pdf"),
          to = paste0("../../gen/data-preparation/output/IMDB_dataset_name.basics.pdf"))

file.remove(from = paste0("../data-preparation/Data_RMD_files/IMDB_dataset_name.basics.pdf"))