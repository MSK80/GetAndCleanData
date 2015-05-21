#test
x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
#train
x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
#Features
features<-read.table("UCI HAR Dataset/features.txt")
#Activities
activities<-read.table("UCI HAR Dataset/activity_labels.txt")
#binding test and train
data<-rbind(x_test,x_train)
subject<-rbind(subject_test,subject_train)
#renaming columns in data
colnames(data)<-features[,2]
#Extracts only the measurements on the mean and standard deviation for each measurement.
my_data1<-data[, grep('mean', names(data))]
my_data2<-data[, grep('std', names(data))]
data<-cbind(my_data1,my_data2)
remove(my_data1,my_data2)
#Uses descriptive activity names to name the activities in the data set
y<-rbind(y_test,y_train)
data<-cbind(y,data)
my_data<-merge(activities,data,by.x="V1",by.y="V1")
my_data<-my_data[,-1]
colnames(my_data)[1]<-"activities"
remove(activities,data,features,subject,subject_test,subject_train,x_test,x_train,y,y_test,y_train,path)
#From the data set in step 4, creates a second, independent tidy data set with the
#average of each variable for each activity and each subject.
tidy.data2<-aggregate(my_data[,-1],by=list(my_data$activities),mean)
colnames(tidy.data2)[1]<-"activities"
write.table(my_data,file="my_data.txt",row.name=FALSE)
