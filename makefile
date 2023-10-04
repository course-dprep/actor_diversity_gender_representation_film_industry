Merge_Data: NameBasics.tsv Actors.tsv TitleBasics.tsv Merging_datasets.R
	Rscript Merging_datasets.R

NameBasics.tsv TitleBasics.tsv Actors.tsv: download.R
	Rscript download.R

clean:
	R -e "unlink('*.tsv')"
	R -e "unlink('*.pdf')"