te<-read.table("./test/X_test.txt")
teact<-read.table("./test/y_test.txt")
tesub<-read.table("./test/subject_test.txt")

tr<-read.table("./train/X_train.txt")
tract<-read.table("./train/y_train.txt")
trsub<-read.table("./train/subject_train.txt")

act<-read.table("activity_labels.txt")
colnames(act)<-c("actid", "activity")
fea<-read.table("features.txt")

full<-rbind(te,tr)
fullact<-rbind(teact,tract)
fullsub<-rbind(tesub,trsub)

fea2<-fea[grepl("mean()", fea$V2) | grepl("std()", fea$V2),]
working<-full[,fea2$V1]
colnames(working)<-fea2$V2

colnames(fullact)<-"actid"
colnames(fullsub)<-"subject"

working$actid<-fullact$actid
working$subject<-fullsub$subject

working<-merge(working, act, by="actid")

tiny<-aggregate(. ~ actid + activity + subject, data = working,  FUN = mean)
tiny<-tiny[,-1]

write.table(tiny, file="tiny.txt", row.name=FALSE)