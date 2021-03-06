datacar<-read.csv(file = "C:/Users/KIIT/Documents/5th Semester/AP Lab G2/cars.csv")
model=lm(CO2~Volume+Weight,data=datacar)
summary(model)
predict(model,data.frame(Volume=360,Weight=264))

XYdata<-read.csv(file = "C:/Users/KIIT/Documents/5th Semester/AP Lab G2/XYdata.csv",header = FALSE)
colnames(XYdata)<-c("X","Y")
plot(XYdata$X,XYdata$Y)
Model=lm(Y~X,data = XYdata)
summary(Model)
predict(Model,data.frame(X=56))
