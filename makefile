all: analysis

data-preparation:
	make -C src/data-preparation

analysis: data-preparation
	make -C src/analysis

clean:
	R -e "unlink(list.files(pattern='*.pdf', recursive=T))"
	R -e "unlink(list.files(pattern='*.png', recursive=T))"
	R -e "unlink(list.files(pattern='*.csv', recursive=T))"
	R -e "unlink(list.files(pattern='*.tsv', recursive=T))"