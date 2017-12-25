# obtain vector of file paths in the input directory
files <- list.files(path ='E:/tutorials/R-data-analysis/Acadgild/RDataAnalytics_Assignment1.2/task_3/input', full.names=TRUE)

# apply the read.csv function on each element in the files vector to 
# obtain a list of data frames
datalist <- lapply(files,read.csv )

# combine all data frames in the list to a single data frame
Reduce(function(x,y) { rbind(x,y)}, datalist)
