file.copy(from = paste0("../data-preparation/Data_RMD_files/Harvard_actors_racial_line.pdf"),
          to = paste0("../../gen/data-preparation/output/Harvard_actors_racial_line.pdf"))

file.remove(from = paste0("../data-preparation/Data_RMD_files/Harvard_actors_racial_line.pdf"))
file.copy(from = paste0("../data-preparation/Data_RMD_files/IMDB_dataset_name.basics.pdf"),
          to = paste0("../../gen/data-preparation/output/IMDB_dataset_name.basics.pdf"))

file.remove(from = paste0("../data-preparation/Data_RMD_files/IMDB_dataset_name.basics.pdf"))
file.copy(from = paste0("../data-preparation/Data_RMD_files/IMDB_dataset_title_basics.pdf"),
          to = paste0("../../gen/data-preparation/output/IMDB_dataset_title_basics.pdf"))

file.remove(from = paste0("../data-preparation/Data_RMD_files/IMDB_dataset_title_basics.pdf"))