## RENDER THE RMARKDOWN OF THE ANALYSIS_MANUSCRIPT FILE INTO A PDF FILE

rmarkdown::render('../../src/paper/Analysis_Manuscript.Rmd')

file.copy(from = paste0("../../src/paper/Analysis_Manuscript.pdf"),
          to = paste0("../../gen/paper/output/Analysis_Manuscript.pdf"))

file.remove(from = paste0("../../src/paper/Analysis_Manuscript.pdf"))

