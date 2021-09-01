#ZA KISLOROD
#-------------------------
data_kislorod<-read.csv(file="C:/Users/HP/Desktop/Вовед во Екоинформатика/kislorod_pod.csv", skipNul="TRUE", header=TRUE)
data_kislorod
#vo delot mean mozi da se procitaat site sredni vrednosti
summary(data_kislorod)
#sredni vrednosti za kislorod po dlabocina
rowMeans(data_kislorod,na.rm=TRUE)
#sredni vrednosti za kislorod po meseci
colMeans(data_kislorod,na.rm=TRUE)
#standardna dev po meseci
apply(data_kislorod,2,sd,na.rm=TRUE)
#standardna dev po dlabocina
apply(data_kislorod,1,sd,na.rm=TRUE)

#ZA TEMPERATURA
#-------------------------
data_tem<-read.csv(file="C:/Users/HP/Desktop/Вовед во Екоинформатика/temperatura_pod.csv", skipNul="TRUE", header=TRUE)
data_tem
#sredni vrednosti za temperatura po dlabocina
rowMeans(data_tem,na.rm=TRUE)
#sredni vrednosti za temperatura po meseci
colMeans(data_tem,na.rm=TRUE)
#standardna dev po meseci
apply(data_tem,2,sd,na.rm=TRUE)
#standardna dev po dlabocina
apply(data_tem,1,sd,na.rm=TRUE)

#Grafik za temperaturata
barplot((as.matrix(data_tem)),beside=TRUE)

#Grafik za kislorodot
barplot((as.matrix(data_kislorod)),beside=TRUE)

#Korelaciite megju temperaturata i kislorodot za sekoja dlabocina

cor(t(data_tem[1,]),t(data_kislorod[1,]))
cor(t(data_tem[2,]),t(data_kislorod[2,]))
cor(t(data_tem[3,]),t(data_kislorod[3,]))
cor(t(data_tem[4,]),t(data_kislorod[4,]))
cor(t(data_tem[6,]),t(data_kislorod[6,]))
cor(t(data_tem[7,]),t(data_kislorod[7,]))