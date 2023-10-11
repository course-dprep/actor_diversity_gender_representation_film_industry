RMD =../data-preparation/Data_RMD_files/
OUTPUT = ../../gen/data-preparation/output

all: $(OUTPUT)/IMDB_dataset_title_basics.pdf $(OUTPUT)/IMDB_dataset_name.basics.pdf $(OUTPUT)/Harvard_actors_racial_line.pdf $(OUTPUT)/Analysis_manuscript.pdf

$(OUTPUT)/IMDB_dataset_title_basics.pdf: $(RMD)/IMDB_dataset_title_basics.Rmd
	R --vanilla < Execute_titlebasics-Rmd.R

$(OUTPUT)/IMDB_dataset_name.basics.pdf: $(RMD)/IMDB_dataset_name.basics.Rmd
	R --vanilla < Execute_namebasics-Rmd.R

$(OUTPUT)/Harvard_actors_racial_line.pdf: $(RMD)/Harvard_actors_racial_line.Rmd 
	R --vanilla < Execute_Harvard-Rmd.R

$(OUTPUT)/Analysis_manuscript.pdf: Analysis_manuscript.Rmd 
	R --vanilla < Render_manuscript.R
	




