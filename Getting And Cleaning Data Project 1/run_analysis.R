library(stringr)
## File format is space-separated fixed width numbers in a text file, 15-characters per number (e.g., -5.1360088e-002)
## Values are normalized to [-1,1], that is -1.0000000e+000 to 1.0000000e+000

## 0a - Read labels
feature_labels<-read.table("features.txt")[2]
activity_labels<-read.table("activity_labels.txt")[2]
## 0b - Read test data: subject id, activity id, feature vector
test_sid<-read.table(file="test/subject_test.txt")
test_aid<-read.table(file="test/y_test.txt")
test_fv<-read.table(file="test/X_test.txt", col.names=feature_labels[,1])
## 0c - Read train data: subject id, activity id, feature vector
train_sid<-read.table(file="train/subject_train.txt")
train_aid<-read.table(file="train/y_train.txt")
train_fv<-read.table(file="train/X_train.txt", col.names=feature_labels[,1])
## 1 - Merge the training and the test sets to create one data set.
## Note that the appropriate type of merge is binding and sorting different observations, we are not adding features to each observation
sid_unsorted<-rbind(test_sid, train_sid)
aid_unsorted<-rbind(test_aid, train_aid)
fv_unsorted<-rbind(test_fv, train_fv)
ordering<-order(sid_unsorted,aid_unsorted)
sid<-sid_unsorted[ordering,]
aid<-aid_unsorted[ordering,]
fv<-fv_unsorted[ordering,]
## 2 - Extract only the measurements on the mean and standard deviation for each measurement.
## Note that I am excluding aggregates of derivative measures (e.g., mean frequency), I don't think those are being requested
## but if they are desired, just change fixed("-mean()") to "mean" and fixed("-std()") to "std"
keep_features<-str_detect(feature_labels[,1], fixed("-mean()"))|str_detect(feature_labels[,1], fixed("-std()"))
filtered_fv<-fv[,keep_features]
## 3 - Use descriptive activity names to name the activities in the data set
activity_factors<-cut(aid, breaks=6, labels=activity_labels[,1])
## 4 - Appropriately label the data set with descriptive variable names.
dataset_step4<-cbind(subject=sid, activity=activity_factors, filtered_fv)
## 5 - From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
## Note: In my opinion after ordering by activity and subject, it looks better with the subject column first and activity second
## so I'm switching the columns around
dataset_step5_tmp<-aggregate(dataset_step4[,-(1:2)], by=list(activity=dataset_step4[,2],subject=dataset_step4[,1]), mean)
dataset_step5<-cbind(subject=dataset_step5_tmp[,2], activity=dataset_step5_tmp[,1], dataset_step5_tmp[,-(1:2)]) 
## Extra step: Write table to a txt file created with write.table() using row.name=FALSE
## Note that I have also added separator and line endings so that it matches Windows line endings and Excel expectations for text (tab-separated) files
## so that the result can be easily viewed in Excel as well (a text editor would work fine too, and programmatic loading is also easy, just specify tab-separated)
write.table(dataset_step5, file="Subject and activity averages.txt", row.names=FALSE, quote=FALSE, sep="\t", eol = "\r\n")