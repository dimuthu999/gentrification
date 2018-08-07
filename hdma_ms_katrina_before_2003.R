rm(list=ls())
library(data.table)


split.points <- c(4,14,15,16,17,18,23,24,28,30,33,40,41,42,43,44,48,49,50,51,52,53,60)

header <- c("asofdate", "respondentid", "agencycode", "typeofloan", "purposeofloan", "occupancy", "amountofloan", "actiontaken", "msa", "state",
                  "countycode", "censustract", "applicantrace1", "applicantrace2", "applicantsex", "coapplicantsex", "applicantincome",
                  "typeofpurchaser", "denialreason1", "denialreason2", "denialreason3", "editstatus", "seqno")

# 2000
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/HMS.U2000.LARS",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)
hdma2 <- hmda[1:100]

state_county <- sapply(hmda,function(x) substr(x,29,33))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]

ms_vector <- as.data.frame(matrix(ncol = 23,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2000.rds")



# 2001
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/HMS.U2001.LARS",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)
hdma2 <- hmda[1:100]

state_county <- sapply(hmda,function(x) substr(x,29,33))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]

ms_vector <- as.data.frame(matrix(ncol = 23,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2001.rds")



# 2002
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/HMS.U2002.LARS",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)
hdma2 <- hmda[1:100]

state_county <- sapply(hmda,function(x) substr(x,29,33))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]

ms_vector <- as.data.frame(matrix(ncol = 23,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2002.rds")


# 2003
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/HMS.U2003.LARS",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)
hdma2 <- hmda[1:100]

state_county <- sapply(hmda,function(x) substr(x,29,33))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]

ms_vector <- as.data.frame(matrix(ncol = 23,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2003.rds")
