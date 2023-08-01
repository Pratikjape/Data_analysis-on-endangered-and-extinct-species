#Project_title-Analysis on endangered animals in the world
#Get working directory
getwd()
#set the working directory
setwd("/cloud/project/Extinct")
#read the data
read_excel("ENDANGERED_SPECIES.xlsx")
#Get the input from the file
input<-read_excel("ENDANGERED_SPECIES.xlsx")
#display the head and summary of data
head(input)
summary(input)
#display count of imp_columns
print(ncol(input))
#create a histogram
#Give the file a name
png(filename = "histogram.jpg")
#plot the histogram
hist(input$MAMMALS,col = "green",xlab = "Mammals count",
 border = "black",
 ylab = "frequency",main = "Extinction of Mammals")
 
#save the file
dev.off()
#create piechat and 3d piechart
x<-input$AMPHIBIANS
#give the chart a filename
png(filename = "piechart.jpg")
piepercent<-round(100*x/sum(x),1)
#plot the piechart
pie(x,labels = piepercent,
 main = "ENDANGERED_Amphibians in percentage",
 col = rainbow(length(x)))
#save the file
dev.off()
#create 3d piechart
#get a library
#install the library first
install.packages("plotrix")
#get the library
library(plotrix)
y<-input$BIRDS
#give the chart a filename
png(filename = "3d_piechart.jpg")
#plot the chart
pie3D(y,labels = input$YEAR,
 main = "Endangered species of birds by years",
 col = (rainbow(length(x))),
 explode = 0.1)
#save the file
dev.off()
#create scatterpoint
# give the plot a filename
png(filename = "scatterplot.jpg")
#plot the scatterplot
plot(x=input$YEAR,y=input$BIRDS,xlab = "years",
 ylab = "Number of birds",xlim = c(1980,2001),
 ylim = c(0,100),main = "Number of extinct birds")
#save the file
dev.off()
#create the barchart
#save the chart a filename
png(filename = "barchart.jpg")
p<-c(sum(input$MAMMALS),sum(input$BIRDS),sum(input$AMPHIBIANS),
 sum(input$FISH),sum(input$PLANTS))
#plot the barchart
barplot(p,col ="firebrick",names.arg = input$YEAR,main = "Total number of entinct species",
 xlab = "years" ,ylab = "no.of species",border = "black")
#save the file
dev.off()
#create the line graph
#Give the chart a filename
png(filename = "linegraph.jpg")
#plot the linegraph
plot(p,type = "o",col ="red",xlab = "years",
 ylab = "Count of species",main = "Increasing RATE of Endangered_species")
#save the file
dev.off()
#----------------END OF CODE---------------