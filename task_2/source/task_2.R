# obtain vector of file paths in the input directory
files <- list.files(path ='E:/tutorials/R-data-analysis/Acadgild/RDataAnalytics_Assignment1.2/task_2/input', full.names=TRUE)

#load the xlsx package to read xls files
library(xlsx)

# apply the read.xlsx2 function on each element in the files vector to 
# obtain a list of data frames
datalist <- lapply(files,read.xlsx2, sheetIndex = 1)

# combine all data frames in the list to a single data frame
Reduce(function(x,y) { rbind(x,y)}, datalist)
