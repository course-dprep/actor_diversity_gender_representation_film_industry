all: gen/data-preparation/analysis/output/race_1.png gen/data-preparation/analysis/output/race_2.png gen/data-preparation/analysis/output/gender_1.png gen/data-preparation/analysis/output/gender_2.png install_packages

gen/data-preparation/analysis/output/gender_1.png gen/data-preparation/analysis/output/gender_2.png: gen/data-preparation/output/Merge_Data.csv src/analysis/Gender_representation_analysis.R
	Rscript src/analysis/Gender_representation_analysis.R

gen/data-preparation/analysis/output/race_1.png gen/data-preparation/analysis/output/race_2.png: gen/data-preparation/output/Merge_Data.csv src/analysis/Shannon_regression.R
	Rscript src/analysis/Shannon_regression.R

gen/data-preparation/output/Merge_Data.csv: data/NameBasics.tsv data/Actors.tsv data/TitleBasics.tsv src/data-preparation/Merging_datasets.R
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