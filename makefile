Merge_Data.tsv: NameBasics.tsv Actors.tsv TitleBasics.tsv src/data-preparation/Merging_datasets.R
	Rscript src/data-preparation/Merging_datasets.R

NameBasics.tsv TitleBasics.tsv Actors.tsv: src/data-preparation/download.R
	Rscript src/data-preparation/download.R

clean:
	R -e "setwd('data'); unlink('*.tsv')"
	R -e "setwd('data'); unlink('*.pdf')"