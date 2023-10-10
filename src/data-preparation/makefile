OUTPUT = ../../gen/data-preparation/output
DATA = ../../data

all: install_packages $(DATA)/NameBasics.tsv $(DATA)/TitleBasics.tsv $(DATA)/Actors.tsv $(OUTPUT)/Merged_dataset.csv 

$(OUTPUT)/Merged_dataset.csv: $(DATA)/NameBasics.tsv $(DATA)/Actors.tsv $(DATA)/TitleBasics.tsv Merging_datasets.R
	R --vanilla < Merging_datasets.R

$(DATA)/NameBasics.tsv $(DATA)/TitleBasics.tsv $(DATA)/Actors.tsv: download.R
	R --vanilla < download.R
	
install_packages: install_packages.R
	R --vanilla < install_packages.R
