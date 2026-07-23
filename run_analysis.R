# Read training data
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt")
subject_train <- read.table("UCI_HAR_Dataset/train/subject_train.txt")

# Combine into one training dataset
training_set <- cbind(subject_train, y_train, X_train)

# Name first columns
colnames(training_set)[1:2] <- c("Subject", "Activity")

# Read test data
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt")
subject_test <- read.table("UCI_HAR_Dataset/test/subject_test.txt")

# Combine into one test dataset
test_set <- cbind(subject_test, y_test, X_test)
# Name first columns
colnames(test_set)[1:2] <- c("Subject", "Activity")

#Merge training set and test set
data <- rbind(training_set, test_set)

#Extract features and rename the coloumns
features <- read.table("UCI_HAR_Dataset/features.txt",
                       stringsAsFactors = FALSE)

colnames(data) <- c("Subject",
                    "Activity",
                    features$V2)


# Select columns containing mean() or std()
mean_std_columns <- grep("mean\\(\\)|std\\(\\)", 
                         colnames(data), 
                         value = TRUE)

data_mean_std <- data[, c("Subject", "Activity", mean_std_columns)]


activity_labels <- read.table(
  "UCI_HAR_Dataset/activity_labels.txt",
  col.names = c("Activity", "ActivityName")
)


data_mean_std <- merge(
  data_mean_std,
  activity_labels,
  by = "Activity"
)

data_mean_std <- data_mean_std[, c(
  "Subject",
  "ActivityName",
  names(data_mean_std)[3:(ncol(data_mean_std)-1)]
)]

names(data_mean_std)[2] <- "Activity"

tidy_data <- aggregate(. ~ Subject + Activity,
                       data = data_mean_std,
                       FUN = mean)

write.table(tidy_data,
            "UCI_HAR_Dataset/tidy_data.txt",
            row.names = FALSE)
