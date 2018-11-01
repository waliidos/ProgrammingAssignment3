library(plyr); library(dplyr)

run_analysis <- function() {

  ## creating files directories paths
  pathtest <- "./test"
  
  path_train <- "./train"
  
  ## creating files path and uploading in R required files for the assignment 
  filename <- paste(pathtest,"/","X_test.txt", sep = "", collapse = "")
  xtest <- read.table(filename)
 
  filename <- paste(pathtest,"/","Y_test.txt", sep = "", collapse = "")
  ytest <- read.table(filename)
  
  filename <- paste(pathtest,"/","subject_test.txt", sep = "", collapse = "")
  subject_test <- read.table(filename)
  
  filename <- paste(path_train,"/","X_train.txt", sep = "", collapse = "")
  xtrain <- read.table(filename)
  
  filename <- paste(path_train,"/","Y_train.txt", sep = "", collapse = "")
  ytrain <- read.table(filename)
  
  filename <- paste(path_train,"/","subject_train.txt", sep = "", collapse = "")
  subject_train <- read.table(filename)
  
  features <- read.table("features.txt")
  
  labelvect <- read.table("activity_labels.txt")  
  
  #merging training and test files to create one data set
  testvar <- cbind(subject_test,ytest)
  
  testvar <- cbind(testvar, xtest)
  
  trainvar <- cbind(subject_train,ytrain)
  
  trainvar <- cbind(trainvar, xtrain)   
  
  alltable <- rbind(testvar, trainvar)
  
  ## Extracting only the measurements on the mean and standard deviation for each measurement : 
  ## keeping only columns which names contain mean or std
  tabcolnum <- grep("mean|std", features$V2)
  
  meanstdtab <- alltable[,c(1,2,tabcolnum + 2)]
  
  ## Using descriptive activity names to name the activities in the data set
  meanstdtab$V1.1 <- labelvect[match(meanstdtab$V1.1, labelvect$V1),2]
  
  ## Appropriately labels the data set with descriptive variable names. 
  names(meanstdtab)[1] <- "subject"
  names(meanstdtab)[2] <- "activitylabels"
  names(meanstdtab)[3:length(colnames(meanstdtab))] <- as.character(features$V2[tabcolnum])
  
  names(meanstdtab) <- tolower(gsub("-",".",names(meanstdtab)))
  names(meanstdtab) <- gsub("()","",names(meanstdtab),fixed=TRUE)
  
  ## creating a second, independent tidy data set with the average of each variable for each activity and each subject.
  submeanstdtab <- meanstdtab %>% dplyr::group_by(subject,activitylabels) %>% summarise_all(funs(mean))
  
  write.table(submeanstdtab, "submeanstdtab.txt",row.names=FALSE)
  
}
  