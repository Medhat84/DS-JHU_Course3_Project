## Reading all datasets
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Creating one dataset 
train <- cbind(ytrain, subjecttrain, xtrain)
test <- cbind(ytest, subjecttest, xtest)
db <- rbind(train, test)

## Giving names to activities & variables
names(db) <- c("activity", "subject", as.character(features[,2]))
db[,1] <- factor(db[,1], levels = activities[,1], labels = activities[,2])

## Getting only mean & standard deviation measurements & correcting names of some columns
meanstd <- db[ , c(1, 2, which(grepl("mean\\(|std\\(", names(db))))]
names(meanstd) <- sub("BodyBody","Body",names(meanstd))

## Grouping by activity then subject, getting mean & exporting the result tidy dataset
library(dplyr)
dset <- tbl_df(meanstd)
avdset <- dset %>% group_by(activity, subject) %>% summarize_all(mean)
write.table(avdset,"C3W4_DB.txt", row.names = FALSE)