rmarkdown::render('../data-preparation/Data_RMD_files/Harvard_actors_racial_line.Rmd')

file.copy(from = paste0("../../src/data-preparation/Harvard_actors_racial_line.pdf"),
          to = paste0("../../gen/data-preparation/output/Harvard_actors_racial_line.pdf"))

file.remove(from = paste0("../../src/data-preparation/Harvard_actors_racial_line.pdf"))