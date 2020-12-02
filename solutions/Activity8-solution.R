## Activity 8: Document Feature Similarity
# Goal: Find documents similar or different from another document.

# I. Document similarity

# 1. Start with a reference document, ted talk #1 and compute cosine similarity with 
# other talks in the corpus.

textstat_simil(ted_dfm, ted_dfm["ted_talks17.csv.1",], method="cosine")

# 2. Turn that output into a data frame

similarity_scores <- data.frame(textstat_simil(ted_dfm, ted_dfm["ted_talks17.csv.1",], method="cosine"))

# 3. Sort in descending order of cosine similarity
similarity_scores[order(-similarity_scores$cosine),]

# 4. Compare tags for talks #34 and #1
ted_corp$tags[1]
ted_corp$tags[34]

# 5. Practice find documents most similar to ted_talks17.csv.10.

textstat_simil(ted_dfm, ted_dfm["ted_talks17.csv.10",], method="cosine")

# 6. Practice. Convert similarity scores to a data frame.
similarity_scores10 <- data.frame(textstat_simil(ted_dfm, ted_dfm["ted_talks17.csv.10",], method="cosine"))

# 7. Practice. Sort the scores in descending order.
similarity_scores10[order(-similarity_scores10$cosine),]

# 8. Practice. Examine the tags field for both documents.
ted_corp$tags[10]
ted_corp$tags[38]



