## RENDER THE RMARKDOWN FILES INTO PDF FILES

# Render IMDB_dataset_name.basics.Rmd
rmarkdown::render('src/data-preparation/DATA_RMD_files/IMDB_dataset_name.basics.Rmd')

file.copy(from = paste0("src/data-preparation/DATA_RMD_files/IMDB_dataset_name.basics.pdf"),
          to = paste0("gen/data-preparation/output/IMDB_dataset_name.basics.pdf"))

file.remove(from = paste0("src/data-preparation/DATA_RMD_files/IMDB_dataset_name.basics.pdf"))

# Render IMDB_dataset_title_basics.Rmd 
rmarkdown::render('src/data-preparation/DATA_RMD_files/IMDB_dataset_title_basics.Rmd')

file.copy(from = paste0("src/data-preparation/DATA_RMD_files/IMDB_dataset_title_basics.pdf"),
          to = paste0("gen/data-preparation/output/IMDB_dataset_title_basics.pdf"))

file.remove(from = paste0("src/data-preparation/DATA_RMD_files/IMDB_dataset_title_basics.pdf"))

# Render Harvard_actors_racial_line.Rmd
rmarkdown::render('src/data-preparation/DATA_RMD_files/Harvard_actors_racial_line.Rmd')

file.copy(from = paste0("src/data-preparation/DATA_RMD_files/Harvard_actors_racial_line.pdf"),
          to = paste0("gen/data-preparation/output/Harvard_actors_racial_line.pdf"))

file.remove(from = paste0("src/data-preparation/DATA_RMD_files/Harvard_actors_racial_line.pdf"))
