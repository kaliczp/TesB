beolvasasok=dir("Data/")
Tes4=read.csv(paste0("Data/",beolvasasok[1]),skip=1,header = FALSE)
for(nr in 2:length(beolvasasok))
  Tes4=rbind(Tes4,read.csv(paste0("Data/",beolvasasok[nr]),skip=1,header = FALSE))

#idosor
library(xts)
idő=as.POSIXct(Tes4[,2])
Tes4.xts=xts(Tes4[,3:5], idő)
plot(Tes4.xts, main = "Tés kontroll (4)")

