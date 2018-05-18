#Script that Manipulates CSV Files 

print(getwd()) #Get the Current Working Directory


#Set CurrenT Working directory
#setwd("/web/com")

getwd() #Get the current Working Directory


#Read a CSV File(Place the CSV file in data directory )
inputData <- read.csv("data/input.csv")


inputData #Print the csv File

#read.csv() function gives the output as data frame

is.data.frame(inputData) #Check if inputData is DataFrame or not --> Gives TRUE/FALSE

ncol(inputData) #Total Number of Columns in DataFrame
nrow(inputData) #Total Number of row in DataFrame


#Get the Maximum Salary
maxSal <-max(inputData$salary)
maxSal

#Get Details of Person with Max Salary
maxSalValue <-subset(inputData,salary==max(salary))
maxSalValue



#Get all the people working in IT department

itDeptValue <-subset(inputData,dept=="IT")
itDeptValue

#Get person in Finance Department whose Salary is greater than 500
sal_grt_600 <- subset(inputData,salary > 500 & dept =="Finance")
sal_grt_600

#Get the People who joined after 2014
val_aft_2014 <- subset(inputData, as.Date(start_date) > as.Date("2014-01-01"))
val_aft_2014                 

#Writing an Existing data in CSV File
write.csv(val_aft_2014,"output1.csv")


#Read from newly Created CSV File

newCSV <- read.csv("output1.csv")
newCSV
