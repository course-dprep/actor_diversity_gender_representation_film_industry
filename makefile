all: gender_representation_analysis_plot1.png gender_representation_analysis_plot2.png race_diversity_analysis_plot1.png race_diversity_analysis_plot2.png

gender_representation_analysis_plot1.png gender_representation_analysis_plot2.png: Merge_Data.csv
	Rscript src/analysis/Gender_representation_analysis.R

race_diversity_analysis_plot1.png race_diversity_analysis_plot2.png: Merge_Data.csv
	Rscript src/analysis/Shannon_regression.R

Merge_Data.csv: NameBasics.tsv Actors.tsv TitleBasics.tsv src/data-preparation/Merging_datasets.R
	Rscript src/data-preparation/Merging_datasets.R

NameBasics.tsv TitleBasics.tsv Actors.tsv: src/data-preparation/download.R
	Rscript src/data-preparation/download.R

clean:
	find . -type f -name "*.pdf" -delete
	find . -type f -name "*.tsv" -delete
	find . -type f -name "*.csv" -delete
	find . -type f -name "*.png" -delete
