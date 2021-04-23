setwd("C:/Users/DELL/Desktop/R")
Veg <- read.table(file="Vegetation2.txt", header=TRUE)
str(Veg)
plot(Veg$BARESOIL,Veg$R)
plot(Veg$R, Veg$BARESOIL)
plot(x=Veg$BARESOIL, y=Veg$R)
plot(R~BARESOIL, data = Veg)
plot(x=Veg$BARESOIL, #biến x
     y=Veg$R, #biến y
     xlab="Exposed soil",  #tiêu đề của x
     ylab = "Species richness", #tiêu đề của y
     main="Scatter plot", #tiêu đề của đồ thị
     xlim=c(0,45), #khoảng giá trị của x 0-45
     ylim=c(4,19))
plot(x=Veg$BARESOIL, #biến x
     y=Veg$R, #biến y
     xlab="Exposed soil",  #tiêu đề của x
     ylab = "Species richness", #tiêu đề của y
     main="Scatter plot", #tiêu đề của đồ thị
     xlim=c(min(Veg$BARESOIL), max(Veg$BARESOIL)), #khoảng giá trị của x 0-45
     ylim=c(min(Veg$R), max(Veg$R))) #Khoảng giá trị của y
plot(x=Veg$BARESOIL, #biến x
     y=Veg$R, #biến y
     xlab="Exposed soil",  #tiêu đề của x
     ylab = "Species richness", #tiêu đề của y
     main="Scatter plot", #tiêu đề của đồ thị
     xlim=c(min(Veg$BARESOIL), max(Veg$BARESOIL)), #khoảng giá trị của x 0-45
     ylim=c(min(Veg$R), max(Veg$R)), pch=8) #Khoảng giá trị của y
#mặc định: biểu tượng - pch=1 - hình tròn
#pch=2: hình tam giác

Veg$Transect
plot(x=Veg$BARESOIL, #biến x
     y=Veg$R, #biến y
     xlab="Exposed soil",  #tiêu đề của x
     ylab = "Species richness", #tiêu đề của y
     main="Scatter plot", #tiêu đề của đồ thị
     xlim=c(min(Veg$BARESOIL), max(Veg$BARESOIL)), #khoảng giá trị của x 0-45
     ylim=c(min(Veg$R), max(Veg$R)), pch=Veg$Transect) #Khoảng giá trị của y

Veg$Time
#Nếu <=1980 thì cho biểu tượng pch=1
#Nếu >1980 thì cho biểu tượng pch =10
TimeGroup <-Veg$Time
TimeGroup[Veg$Time<=1980] <- 1
TimeGroup[Veg$Time>1980] <- 10
plot(x=Veg$BARESOIL, #biến x
     y=Veg$R, #biến y
     xlab="Exposed soil",  #tiêu đề của x
     ylab = "Species richness", #tiêu đề của y
     main="Scatter plot", #tiêu đề của đồ thị
     xlim=c(min(Veg$BARESOIL), max(Veg$BARESOIL)), #khoảng giá trị của x 0-45
     ylim=c(min(Veg$R), max(Veg$R)), pch=TimeGroup) #Khoảng giá trị của y


plot(x=Veg$BARESOIL, #biến x
     y=Veg$R, #biến y
     xlab="Exposed soil",  #tiêu đề của x
     ylab = "Species richness", #tiêu đề của y
     main="Scatter plot", #tiêu đề của đồ thị
     xlim=c(min(Veg$BARESOIL), max(Veg$BARESOIL)), #khoảng giá trị của x 0-45
     ylim=c(min(Veg$R), max(Veg$R)), pch=TimeGroup, col=3) #Khoảng giá trị của y



#tham số: col: color: 1- black
#2 - red
#3 - green

x<- 1:8
plot(x, col=x)

#điều chỉnh kích thước của symbols
CexSize <-Veg$Time
CexSize[Veg$Time<=1980] <- 1
CexSize[Veg$Time>1980] <- 2
plot(x=Veg$BARESOIL, #biến x
     y=Veg$R, #biến y
     xlab="Exposed soil",  #tiêu đề của x
     ylab = "Species richness", #tiêu đề của y
     main="Scatter plot", #tiêu đề của đồ thị
     xlim=c(min(Veg$BARESOIL), max(Veg$BARESOIL)), #khoảng giá trị của x 0-45
     ylim=c(min(Veg$R), 
            max(Veg$R)), 
     pch=TimeGroup, 
     col=1,
     cex=CexSize) #Khoảng giá trị của y
veg1 <- loess(R~BARESOIL, data=Veg)
fit <- fitted(veg1)
lines(Veg$BARESOIL, fit)

