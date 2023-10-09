all: race_1.png race_2.png gender_1.png gender_2.png

gender_1.png gender_2.png: Merge_Data.csv src/analysis/Gender_representation_analysis.R
	Rscript src/analysis/Gender_representation_analysis.R

race_1.png race_2.png: Merge_Data.csv src/analysis/Shannon_regression.R
	Rscript src/analysis/Shannon_regression.R

Merge_Data.csv: NameBasics.tsv Actors.tsv TitleBasics.tsv src/data-preparation/Merging_datasets.R
	Rscript src/data-preparation/Merging_datasets.R

NameBasics.tsv TitleBasics.tsv Actors.tsv: src/data-preparation/download.R
	Rscript src/data-preparation/download.R

clean:
	R -e "unlink('*.pdf')"
	R -e "unlink('*.csv')"
	R -e "unlink('*.tsv')"
	R -e "unlink('*.png')"
