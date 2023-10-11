RMD =../data-preparation/Data_RMD_files/
OUTPUT = ../../gen/data-preparation/output

all: IMDB_dataset_title_basics.pdf IMDB_dataset_name.basics.pdf Harvard_actors_racial_line.pdf $(OUTPUT)Harvard_actors_racial_line.pdf $(OUTPUT)IMDB_dataset_name.basics.pdf $(OUTPUT)IMDB_dataset_title_basics.pdf

IMDB_dataset_title_basics.pdf: $(RMD)/IMDB_dataset_title_basics.Rmd
	R --vanilla < Execute_titlebasics-Rmd.R

IMDB_dataset_name.basics.pdf: $(RMD)/IMDB_dataset_name.basics.Rmd
	R --vanilla < Execute_namebasics-Rmd.R

Harvard_actors_racial_line.pdf: $(RMD)/Harvard_actors_racial_line.Rmd 
	R --vanilla < Execute_Harvard-Rmd.R
	
$(OUTPUT)Harvard_actors_racial_line.pdf $(OUTPUT)IMDB_dataset_name.basics.pdf $(OUTPUT)IMDB_dataset_title_basics.pdf: Move_files.R
	R --vanilla < Move_files.R



