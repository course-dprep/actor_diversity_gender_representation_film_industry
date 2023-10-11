OUTPUT =../../gen/analysis/output
PREP =../../gen/data-preparation/output

all: $(OUTPUT)/race_diversity_plot1.png $(OUTPUT)/race_diversity_plot2.png $(OUTPUT)/gender_representation_plot1.png $(OUTPUT)/gender_representation_plot2.png

$(OUTPUT)/gender_representation_plot1.png $(OUTPUT)/gender_representation_plot2.png: $(PREP)/Merged_dataset.csv Gender_representation_analysis.R
	R --vanilla < Gender_representation_analysis.R

$(OUTPUT)/race_diversity_plot1.png $(OUTPUT)/race_diversity_plot2.png: Shannon_regression.R $(PREP)/Merged_dataset.csv 
	R --vanilla < Shannon_regression.R