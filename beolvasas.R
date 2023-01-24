beolvasasok=dir("Data/")
Tes4=read.csv(paste0("Data/",beolvasasok[1]),skip=1,header = FALSE)
Tes4=rbind(Tes4,read.csv(paste0("Data/",beolvasasok[2]),skip=1,header = FALSE))

#idosor
library(xts)
idő=as.POSIXct(Tes4[,2])
Tes4.xts=xts(Tes4[,3:5], idő)
plot(Tes4.xts)

Tes4=rbind(Tes4,read.csv(paste0("Data/",beolvasasok[3]),skip=1,header = FALSE))
