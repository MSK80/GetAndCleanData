# Description of script use to create a tidy data set    
`x_test<-read.table("UCI HAR Dataset/test/X_test.txt")` - reading X_text.txt file into variable x_test    
`y_test<-read.table("UCI HAR Dataset/test/y_test.txt")` - reading y_text.txt file into variable y_test    
`subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")` - reading subject_test.txt file into variable subject_test    
`x_train<-read.table("UCI HAR Dataset/train/X_train.txt")` - reading X_train.txt file into variable x_train    
`y_train<-read.table("UCI HAR Dataset/train/y_train.txt")` - reading y_train.txt file into variable y_train    
`subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")` - reading subject_train.txt file into variable subject_train    
`features<-read.table("UCI HAR Dataset/features.txt")` - reading features.txt file into variable features    
`activities<-read.table("UCI HAR Dataset/activity_labels.txt")` - reading activity_labels.txt into variable activities    
`data<-rbind(x_test,x_train)` - binding together x_test and x_train data into one variable data    
`subject<-rbind(subject_test,subject_train)` - binding together subject_test and subject_train data into one variable subject    
`colnames(data)<-features[,2]` - renaming all column names in data by column names defined in second column of features    
`my_data1<-data[, grep('mean', names(data))]` - extracting all columns related to mean and passing them into new variable my_data1    
`my_data2<-data[, grep('std', names(data))]` - extracting all columns related to standard deviation and passing them into new variable my_data2    
`data<-cbind(my_data1,my_data2)` - binding together by column data related to mean and standard deviation    
`remove(my_data1,my_data2)` - removing unused variables    
`y<-rbind(y_test,y_train)` - binding together y_test and y_train data into new variable y    
`data<-cbind(y,data)` - binding by column y and data variables    
`my_data<-merge(activities,data,by.x="V1",by.y="V1")` - adding descriptive information about particular activity related to specific measurements    
`my_data<-my_data[,-1]` - removinf obsolete column from data    
`colnames(my_data)[1]<-"activities"` - ranaming column name of activities    
`remove(activities,data,features,subject,subject_test,subject_train,x_test,x_train,y,y_test,y_train,path)` - removing unused variables    
`tidy.data2<-aggregate(my_data[,-1],by=list(my_data$activities),mean)` - creating second tidy data with mean calculations of values related to all activities and features    
`colnames(tidy.data2)[1]<-"activities"` - ranaming column name of activities    
`write.table(my_data,file="my_data.txt",row.name=FALSE)` - exporting tidy data into txt file    
