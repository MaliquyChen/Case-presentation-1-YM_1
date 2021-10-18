disease <- read.delim("disease.csv", header=TRUE,sep = ",")

path <- "D://Case Presentation 1 Data//Train_Textual"
filename <- dir(path)
cormorbidity <- data.frame(matrix(ncol=15,nrow=length(filename)))
for(l in c(1:15)){
  YN_value <- matrix("N",nrow = length(filename))
  obese_word <- disease[,l][is.na(disease[,l])==F]
  num <- length(obese_word)
  m <- matrix()
  for(i in c(1:length(filename))){
    print(paste0(l,i))
    cd <- read.delim(filename[i], header=FALSE,sep = " ")
    n <- 0
    for(j in c(1:num)){
      if(nchar(obese_word[j])<4){
        for(k in c(1:dim(cd)[2])){
          if(obese_word[j] %in% cd[,k]){n <- 1}
        }
      }else{
        if(TRUE %in% grepl(obese_word[j],cd,ignore.case = TRUE)){n <- 1}
      }
    }
    if(n==1){
      YN_value[i] <- "Y"
    }
    m <-rbind(m,n)
  }
  m <- m[-1]
  cormorbidity[,l] <- m
}
colnames(cormorbidity)<-names(disease)
#cormorbidity$obesity <- 0
#cormorbidity$obesity[201:400] <- 1
write.csv(cormorbidity,"cormorbidity.csv",row.names = FALSE)




TN <- 187
FP <- 13
TP <- 176
FN <- 24
precision <- TP/(TP+FP)
recall <- TP/(TP+FN)
F_1 <- 2*(precision*recall/(precision+recall))


cd <- read.delim(filename[30], header=FALSE,sep = ".")
