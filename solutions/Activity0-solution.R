# Activity 0. Starter activity. 
# Goal: learn important terms and concepts for text analysis.

# 1. Packages are snippets of code we'll use in our R session. Install only once.
install.packages("readtext")
install.packages("quanteda")

# 2. You have to load the packages you'll be using each session using library().
library(readtext)
library(quanteda)

# 3. Read a text file. First, set your working directory to the location of the file.
rf_poem <- readtext("frost.txt")
rf_poem

# 4. Create a corpus. A corpus is a structure for text analysis that retains the position of the words.
rf_corp <- corpus(rf_poem)
rf_corp

# 5. Create a document feature matrix (dfm) from the corpus.
rf_dfm <- dfm(rf_corp, remove_punct = TRUE, tolower=T)

View(poem_dfm)

# 6. Practice. Read in the Emily Dickinson poem from "dickinson.csv"
ed_poem <- readtext("dickinson.txt")

# 7. Create a corpus.
ed_corp <- corpus(ed_poem)

# 8. Create a document feature matrix (dfm) from the corpus.
ed_dfm <- dfm(ed_corp, tolower=T)

View(ed_dfm)
