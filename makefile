Merge_Data.csv: NameBasics.tsv Actors.tsv TitleBasics.tsv src/data-preparation/Merging_datasets.R
	Rscript src/data-preparation/Merging_datasets.R

NameBasics.tsv TitleBasics.tsv Actors.tsv: src/data-preparation/download.R
	Rscript src/data-preparation/download.R

clean:
	find . -type f -name "*.pdf" -delete
	find . -type f -name "*.tsv" -delete
