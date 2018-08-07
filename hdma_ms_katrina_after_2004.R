rm(list=ls())
library(data.table)

header <- c("asofdate","respondentid","agencycode","typeofloan","purposeofloan","occupancy","amountofloan","actiontaken","msa","state","countycode",
                      "censustract","applicantsex","coapplicantsex","applicantincome","typeofpurchaser","denialreason1","denialreason2","denialreason3",
                      "editstatus","propertytype","preapprovals","applicantethnicity","coapplicantenthnicity","applicantrace1","applicantrace2","applicantrace3",
                      "applicantrace4","applicantrace5","coapplicantrace1","coapplicantrace2","coapplicantrace3","coapplicantrace4","coapplicantrace5",
                      "ratespread","hoepastatus","lienstatus","seqno")
split.points <- c(4,14,15,16,17,18,23,24,29,31,34,41,42,43,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,71,72,73,80)


# 2008
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/lars.ultimate.2008.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
# hdma <- as.data.frame(hdma)
hmda <- as.vector(hmda$V1)
hdma2 <- hmda[1:100]


state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2008.rds")



# 2007
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/lars.ultimate.2007.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2007.rds")


# 2006
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/LARS.ULTIMATE.2006.DAT",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2006.rds")


# 2005
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/LARS.ULTIMATE.2005.DAT",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2005.rds")


# 2004
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/u2004lar.public.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2004.rds")


# 2009
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/2009_Ultimate_PUBLIC_LAR.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2009.rds")


# 2010
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/Lars.ultimate.2010.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2010.rds")


# 2011
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/Lars.ultimate.2011.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2011.rds")


# 2012
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/Lars.ultimate.2012.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2012.rds")


# 2013
hmda <- fread("C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/Lars.ultimate.2013.dat",header = FALSE,stringsAsFactors = FALSE,sep="\t",data.table = FALSE)
hmda <- as.vector(hmda$V1)

state_county <- sapply(hmda,function(x) substr(x,30,34))
state_county <- as.vector(state_county)
ms <- hmda[which(state_county %in% c("28047","28045","28059"))]


ms_vector <- as.data.frame(matrix(ncol = 38,nrow=length(ms)))

pb <- txtProgressBar(min = 1, max = length(ms), initial = 1,style = 3)
for(i in 1:length(ms)){
  setTxtProgressBar(pb, i)
  ms_vector[i,] <- as.vector(read.fwf(textConnection(ms[i]),widths = c(4,diff(split.points)),as.is=TRUE))
}

names(ms_vector) <- header

saveRDS(ms_vector,file="C:/Users/dnratnadiwakara/Documents/interest rate and default/Data/Raw/HMDA/MS_045047059_2013.rds")

