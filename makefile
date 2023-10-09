all: src/data-preparation/install_packages.R gen/analysis/output/race_diversity_plot1.png gen/analysis/output/race_diversity_plot2.png gen/analysis/output/gender_representation_plot1.png gen/analysis/output/gender_representation_plot2.png 

gen/analysis/output/gender_representation_plot1.png gen/analysis/output/gender_representation_plot2.png: gen/data-preparation/output/Merged_dataset.csv src/analysis/Gender_representation_analysis.R
	Rscript src/analysis/Gender_representation_analysis.R

gen/analysis/output/race_diversity_plot1.png gen/analysis/output/race_diversity_plot2.png: src/analysis/Shannon_regression.R gen/data-preparation/output/Merged_dataset.csv 
	Rscript src/analysis/Shannon_regression.R

gen/data-preparation/output/Merged_dataset.csv: data/NameBasics.tsv data/Actors.tsv data/TitleBasics.tsv src/data-preparation/Merging_datasets.R
	Rscript src/data-preparation/Merging_datasets.R

data/NameBasics.tsv data/TitleBasics.tsv data/Actors.tsv: src/data-preparation/download.R
	Rscript src/data-preparation/download.R
	
install_packages: src/data-preparation/install_packages.R
	Rscript src/data-preparation/install_packages.R

clean:
	R -e "unlink(list.files(pattern='*.pdf', recursive=T))"
	R -e "unlink(list.files(pattern='*.png', recursive=T))"
	R -e "unlink(list.files(pattern='*.csv', recursive=T))"
	R -e "unlink(list.files(pattern='*.tsv', recursive=T))"