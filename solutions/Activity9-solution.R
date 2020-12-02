# Activity 9: Quantitative Political Text Classification using wordfish scaling
# Source: http://www.wordfish.org/

install.packages("quanteda.textmodels")
library(quanteda)
library(quanteda.textmodels)

# Goal: Classify texts according to political party affiliation based on word frequency.

# 1. Create a dfm of the corpus of Presidential speeches from 1992-2020. We created this corpus in Activity 6.
docs_corp

corpus9220 <- corpus_subset(docs_corp, year >= 1992 & year <= 2020)

dfm_9220 <- dfm(corpus9220, remove_punct = TRUE, tolower=T)

# 2. Apply the wordfish model to the dfm.
?textmodel_wordfish
tmod_wf <- textmodel_wordfish(dfm_9220)
summary(tmod_wf)
textplot_scale1d(tmod_wf)

# 3. Assign party affiliation metadata for each speech in the corpus.
docvars(corpus9220)$party <- ifelse(docvars(corpus9220)$name %in% c("barack obama", "william j clinton"), "DEM", "REP")
docvars(corpus9220)

# 4. Group results by party
textplot_scale1d(tmod_wf, groups = corpus9220$party)

# 5. Practice. Create a corpus subset of speeches from 1966-1977. 
corpus6677 <- corpus_subset(docs_corp, year >= 1966 & year <= 1977)

# 6. Practice. Look at the document variables (metadata) for each speech
docvars(corpus6677)

# 7. Practice. Create a dfm of the corpus.
dfm_6677<- dfm(corpus6677, remove_punct = TRUE, tolower=T)

# 8. Practice. Apply the wordfish model to the dfm.
tmod_6677 <- textmodel_wordfish(dfm_6677)
summary(tmod_6677)

# 9. Practice. Create a textplot.
textplot_scale1d(tmod_6677)

# 10. Practice. Create a textplot grouping results by name
textplot_scale1d(tmod_6677, groups = corpus6677$name)
