## Read tips data from csv file
data <- read.csv("/usr/share/ggobi/data/tips.csv", colClasses = "character")
#hist(as.numeric(data$TIP), breaks = 100, main = "Tip's histogram", xlab= "Tips($)")

tips <- as.numeric(data$TIP)
M_tips <- as.numeric(data$TIP[which(data$SEX=='M')])
F_tips <- as.numeric(data$TIP[which(data$SEX=='F')])
SM_tips  <- as.numeric(data$TIP[which(data$SMOKER=='yes')])
NSM_tips <- as.numeric(data$TIP[which(data$SMOKER=='no')])

bill <- as.numeric(data$TOTBILL)
M_bill <- as.numeric(data$TOTBILL[which(data$SEX=='M')])
F_bill <- as.numeric(data$TOTBILL[which(data$SEX=='F')])
SM_bill  <- as.numeric(data$TOTBILL[which(data$SMOKER=='yes')])
NSM_bill <- as.numeric(data$TOTBILL[which(data$SMOKER=='no')])

#plot(tips, bill, xlab = "Tips ($)", ylab = "Total Bill", main = "Linear Fit",
#     ylim=c(0,20), xlim=c(0,20),
#     pch=16, col="blue")

# fit a line to the points
#lm.fit <- lm(bill ~ tips)

# draw the fit line on the plot
#abline(lm.fit) 

#hist(tips/bill, breaks = 50, main = "Tip/TotalBill's histogram", xlab= "Tip/TotalBill")

#p1 <- hist(M_tips/M_bill, breaks = 50)
#p2 <- hist(F_tips/F_bill, breaks = 50)
#plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,1),
#      main = "Rate Tips/TotalBill by sex", xlab = "Tip/TotalBill")
#plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,1), add=T)

#Male   <- rgb(0,0,1,1/4)
#Female <- rgb(1,0,0,1/4)

#legend('topright', c('Male','Female'),
#       fill = c(Male, Female), bty = 'n',
#       border = NA)

#p1 <- hist(SM_tips/SM_bill, breaks = 50)
#p2 <- hist(NSM_tips/NSM_bill, breaks = 50)
#plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,1),
#      main = "Rate Tips/TotalBill by smokers", xlab = "Tip/TotalBill")
#plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,1), add=T)

#Smoker    <- rgb(0,0,1,1/4)
#NonSmoker <- rgb(1,0,0,1/4)

#legend('topright', c('Smoker','Non-Smoker'),
#       fill = c(Smoker, NonSmoker), bty = 'n',
#       border = NA)

RateThurs <- as.numeric(data$TIP[which(data$DAY=='thurs ')])/as.numeric(data$TOTBILL[which(data$DAY=='thurs ')])
RateFrid  <- as.numeric(data$TIP[which(data$DAY=='fri ')])/as.numeric(data$TOTBILL[which(data$DAY=='fri ')])
RateSat <- as.numeric(data$TIP[which(data$DAY=='sat ')])/as.numeric(data$TOTBILL[which(data$DAY=='sat ')])
RateSun <- as.numeric(data$TIP[which(data$DAY=='sun ')])/as.numeric(data$TOTBILL[which(data$DAY=='sun ')])

lines( RateThurs, col="red")
lines( RateFrid,  col="blue")
lines( RateSat,   col="green")
lines( RateSun,   col="magenta")


