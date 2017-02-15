rm(list=ls(all=T))
setwd("~/Google Drive/Rice Sophomore/Sophomore Spring/POLI400/POLI400-RFiles/WaitInLineProject")

library(car)
library(lattice)
library(graphics)

#import and clean bibb data
bibb <- read.csv("Descriptives1Data/Bibb/bibb-ga-timings Farhan Revision.csv", as.is=TRUE,
                     na.strings = "")
bibb$start.checkin <- strptime(bibb$start.checkin,format = '%H:%M:%S')
bibb$leave.table <- strptime(bibb$leave.table, format = '%H:%M:%S')
bibb$start.voting <- strptime(bibb$start.voting, format = '%H:%M:%S')
bibb$end.voting <- strptime(bibb$end.voting, format = '%H:%M:%S')

#import and clean boston data
boston <- read.csv("Descriptives1Data/Boston/boston-ma-suffolk-timings Farhan Revision.csv", as.is=TRUE,
                     na.strings = "")
boston$start.checkin <- strptime(boston$start.checkin,format = '%H:%M:%S')
boston$leave.table <- strptime(boston$leave.table, format = '%H:%M:%S')
boston$start.voting <- strptime(boston$start.voting, format = '%H:%M:%S')
boston$end.voting <- strptime(boston$end.voting, format = '%H:%M:%S')

#import and clean dane data
dane <- read.csv("Descriptives1Data/Dane/dane-wi-timings-fixed.csv", as.is=TRUE,
                       na.strings = "")
dane$start.checkin <- strptime(dane$start.checkin,format = '%H:%M:%S')
dane$leave.table <- strptime(dane$leave.table, format = '%H:%M:%S')
dane$start.voting <- strptime(dane$start.voting, format = '%H:%M:%S')
dane$end.voting <- strptime(dane$end.voting, format = '%H:%M:%S')
dane$get.in.line <- strptime(dane$get.in.line, format = '%H:%M:%S')
dane$leave.line <- strptime(dane$leave.line, format = '%H:%M:%S')
dane$begin.scanning <- strptime(dane$begin.scanning, format = '%H:%M:%S')
dane$end.scanning <- strptime(dane$end.scanning, format = '%H:%M:%S')

#import and clean fairfield data
fairfield <- read.csv("Descriptives1Data/Fairfield/fairfield-ct-timings Farhan Revision.csv", as.is=TRUE,
                     na.strings = "")
fairfield$start.checkin <- strptime(fairfield$start.checkin,format = '%H:%M:%S')
fairfield$leave.table <- strptime(fairfield$leave.table, format = '%H:%M:%S')
fairfield$start.voting <- strptime(fairfield$start.voting, format = '%H:%M:%S')
fairfield$end.voting <- strptime(fairfield$end.voting, format = '%H:%M:%S')
fairfield$get.in.line <- strptime(fairfield$get.in.line, format = '%H:%M:%S')
fairfield$leave.line <- strptime(fairfield$leave.line, format = '%H:%M:%S')
fairfield$begin.scanning <- strptime(fairfield$begin.scanning, format = '%H:%M:%S')
fairfield$end.scanning <- strptime(fairfield$end.scanning, format = '%H:%M:%S')

#import and clean fayette data
fayette <- read.csv("Descriptives1Data/Fayette/fayette-ky-timings-fixed.csv", as.is=TRUE,
                     na.strings = "")
fayette$start.checkin <- strptime(fayette$start.checkin,format = '%H:%M:%S')
fayette$leave.table <- strptime(fayette$leave.table, format = '%H:%M:%S')
fayette$start.voting <- strptime(fayette$start.voting, format = '%H:%M:%S')
fayette$end.voting <- strptime(fayette$end.voting, format = '%H:%M:%S')

#import and clean harris data
harris <- read.csv("Descriptives1Data/Harris/harris-tx-uhoust-timings Farhan Revision.csv", as.is=TRUE,
                        na.strings = "")
harris$start.checkin <- strptime(harris$start.checkin,format = '%H:%M:%S')
harris$leave.table <- strptime(harris$leave.table, format = '%H:%M:%S')
harris$start.voting <- strptime(harris$start.voting, format = '%H:%M:%S')
harris$end.voting <- strptime(harris$end.voting, format = '%H:%M:%S')

#import and clean harris early data
harrisearly <- read.csv("Descriptives1Data/Harris (Early)/harris-early-timings-fixed.csv", as.is=TRUE,
                       na.strings = "")
harrisearly$start.checkin <- strptime(harrisearly$start.checkin,format = '%H:%M:%S')
harrisearly$leave.table <- strptime(harrisearly$leave.table, format = '%H:%M:%S')
harrisearly$start.voting <- strptime(harrisearly$start.voting, format = '%H:%M:%S')
harrisearly$end.voting <- strptime(harrisearly$end.voting, format = '%H:%M:%S')

#import and clean la pitzer data
lapitzer <- read.csv("Descriptives1Data/Los Angeles (Pitzer)/jed-los-angeles-ca-pitzer-timings-fixed.csv", as.is=TRUE,
                            na.strings = "")
lapitzer$start.checkin <- strptime(lapitzer$start.checkin,format = '%H:%M:%S')
lapitzer$leave.table <- strptime(lapitzer$leave.table, format = '%H:%M:%S')
lapitzer$start.voting <- strptime(lapitzer$start.voting, format = '%H:%M:%S')
lapitzer$end.voting <- strptime(lapitzer$end.voting, format = '%H:%M:%S')

#import and clean la usc data
lausc <- read.csv("Descriptives1Data/Los Angeles (USC)/los-angeles-ca-usc-timings-fixed.csv", as.is=TRUE,
                         na.strings = "")
lausc$start.checkin <- strptime(lausc$start.checkin,format = '%H:%M:%S')
lausc$leave.table <- strptime(lausc$leave.table, format = '%H:%M:%S')
lausc$start.voting <- strptime(lausc$start.voting, format = '%H:%M:%S')
lausc$end.voting <- strptime(lausc$end.voting, format = '%H:%M:%S')
lausc$get.in.line <- strptime(lausc$get.in.line, format = '%H:%M:%S')
lausc$leave.line <- strptime(lausc$leave.line, format = '%H:%M:%S')
lausc$begin.scanning <- strptime(lausc$begin.scanning, format = '%H:%M:%S')
lausc$end.scanning <- strptime(lausc$end.scanning, format = '%H:%M:%S')

###############################################################
#madison data is too dirty -- waiting for pettigrew's response#
###############################################################

#import and clean ny data
ny <- read.csv("Descriptives1Data/NY/ny-timings (1).csv", as.is=TRUE,
                      na.strings = "")
ny$start.checkin <- strptime(ny$start.checkin,format = '%H:%M:%S')
ny$leave.table <- strptime(ny$leave.table, format = '%H:%M:%S')
ny$start.voting <- strptime(ny$start.voting, format = '%H:%M:%S')
ny$end.voting <- strptime(ny$end.voting, format = '%H:%M:%S')
ny$get.in.line <- strptime(ny$get.in.line, format = '%H:%M:%S')
ny$leave.line <- strptime(ny$leave.line, format = '%H:%M:%S')
ny$begin.scanning <- strptime(ny$begin.scanning, format = '%H:%M:%S')
ny$end.scanning <- strptime(ny$end.scanning, format = '%H:%M:%S')

#import and clean richland data
richland <- read.csv("Descriptives1Data/Richland/richland-sc-timings (1).csv", as.is=TRUE,
                         na.strings = "")
richland$start.checkin <- strptime(richland$start.checkin,format = '%H:%M:%S')
richland$leave.table <- strptime(richland$leave.table, format = '%H:%M:%S')
richland$start.voting <- strptime(richland$start.voting, format = '%H:%M:%S')
richland$end.voting <- strptime(richland$end.voting, format = '%H:%M:%S')

#import and clean riley data
riley <- read.csv("Descriptives1Data/Riley/riley-ks-timings-fixed.csv", as.is=TRUE,
                         na.strings = "")
riley$start.checkin <- strptime(riley$start.checkin,format = '%H:%M:%S')
riley$leave.table <- strptime(riley$leave.table, format = '%H:%M:%S')
riley$start.voting <- strptime(riley$start.voting, format = '%H:%M:%S')
riley$end.voting <- strptime(riley$end.voting, format = '%H:%M:%S')

#import and clean st.louis data
stlouis <- read.csv("Descriptives1Data/St. Louis/st-louis-mo-timings (2).csv", as.is=TRUE,
                   na.strings = "")
stlouis$start.checkin <- strptime(stlouis$start.checkin,format = '%H:%M:%S')
stlouis$leave.table <- strptime(stlouis$leave.table, format = '%H:%M:%S')
stlouis$start.voting <- strptime(stlouis$start.voting, format = '%H:%M:%S')
stlouis$end.voting <- strptime(stlouis$end.voting, format = '%H:%M:%S')
stlouis$get.in.line <- strptime(stlouis$get.in.line, format = '%H:%M:%S')
stlouis$leave.line <- strptime(stlouis$leave.line, format = '%H:%M:%S')
stlouis$begin.scanning <- strptime(stlouis$begin.scanning, format = '%H:%M:%S')
stlouis$end.scanning <- strptime(stlouis$end.scanning, format = '%H:%M:%S')

#import and clean union data
union <- read.csv("Descriptives1Data/Union/union-pa-timings-fixed.csv", as.is=TRUE,
                      na.strings = "")
union$start.checkin <- strptime(union$start.checkin,format = '%H:%M:%S')
union$leave.table <- strptime(union$leave.table, format = '%H:%M:%S')
union$start.voting <- strptime(union$start.voting, format = '%H:%M:%S')
union$end.voting <- strptime(union$end.voting, format = '%H:%M:%S')

#Bibb time deltas and outputs
bibb$checkin.time <- as.numeric(difftime(bibb$leave.table,bibb$start.checkin,units = c("secs")))
bibb$voting.time <- as.numeric(difftime(bibb$end.voting,bibb$start.voting,units = c("secs")))
summary(bibb)
bibb.trimmed <- bibb
summary(bibb.trimmed)
boxplot(bibb.trimmed$checkin.time, main="Bibb, GA Check-In Time Boxplot", ylab="Seconds")
boxplot(bibb.trimmed$voting.time, main="Bibb, GA Voting Time Boxplot", ylab="Seconds")
densityplot(bibb.trimmed$checkin.time, main="Bibb, GA Check-In Time Frequencies", xlab="Seconds")
densityplot(bibb.trimmed$voting.time, main="Bibb, GA Voting Time Frequencies", xlab="Seconds")

#Boston time deltas and outputs
boston$checkin.time <- as.numeric(difftime(boston$leave.table,boston$start.checkin,units = c("secs")))
boston$voting.time <- as.numeric(difftime(boston$end.voting,boston$start.voting,units = c("secs")))
summary(boston)
boston.trimmed <- boston
summary(boston.trimmed)
boxplot(boston.trimmed$checkin.time, main="Boston, MA Check-In Time Boxplot", ylab="Seconds")
boxplot(boston.trimmed$voting.time, main="Boston, MA Voting Time Boxplot", ylab="Seconds")
densityplot(boston.trimmed$checkin.time, main="Boston, MA Check-In Time Frequencies", xlab="Seconds")
densityplot(boston.trimmed$voting.time, main="Boston, MA Voting Time Frequencies", xlab="Seconds")

#Dane time deltas and outputs
dane$checkin.time <- as.numeric(difftime(dane$leave.table,dane$start.checkin,units = c("secs")))
dane$voting.time <- as.numeric(difftime(dane$end.voting,dane$start.voting,units = c("secs")))
dane$line.time <- as.numeric(difftime(dane$leave.line,dane$get.in.line,units = c("secs")))
dane$scan.time <- as.numeric(difftime(dane$end.scanning,dane$begin.scanning,units =c("secs")))
summary(dane)
dane.trimmed <- dane
summary(dane.trimmed)
boxplot(dane.trimmed$checkin.time, main="Dane, WI Check-In Time Boxplot", ylab="Seconds")
boxplot(dane.trimmed$voting.time, main="Dane, WI Voting Time Boxplot", ylab="Seconds")
boxplot(dane.trimmed$line.time, main="Dane, WI Line to Scan Time Boxplot", ylab="Seconds")
boxplot(dane.trimmed$scan.time, main="Dane, WI Scanning Time Boxplot", ylab="Seconds")
densityplot(dane.trimmed$checkin.time, main="Dane, WI Check-In Time", xlab="Seconds")
densityplot(dane.trimmed$voting.time, main="Dane, WI Voting Time", xlab="Seconds")
densityplot(dane.trimmed$line.time, main="Dane, WI Line to Scan Time", xlab="Seconds")
densityplot(dane.trimmed$scan.time, main="Dane, WI Scanning Time", xlab="Seconds")

#fairfield time deltas and outputs
fairfield$checkin.time <- as.numeric(difftime(fairfield$leave.table,fairfield$start.checkin,units = c("secs")))
fairfield$voting.time <- as.numeric(difftime(fairfield$end.voting,fairfield$start.voting,units = c("secs")))
fairfield$line.time <- as.numeric(difftime(fairfield$leave.line,fairfield$get.in.line,units = c("secs")))
fairfield$scan.time <- as.numeric(difftime(fairfield$end.scanning,fairfield$begin.scanning,units =c("secs")))
summary(fairfield)
fairfield.trimmed <- fairfield
summary(fairfield.trimmed)
boxplot(fairfield.trimmed$checkin.time, main="Fairfield, CT Check-In Time Boxplot", ylab="Seconds")
boxplot(fairfield.trimmed$voting.time, main="Fairfield, CT Voting Time Boxplot", ylab="Seconds")
boxplot(fairfield.trimmed$line.time, main="Fairfield, CT Line to Scan Time Boxplot", ylab="Seconds")
boxplot(fairfield.trimmed$scan.time, main="Fairfield, CT Scanning Time Boxplot", ylab="Seconds")
densityplot(fairfield.trimmed$checkin.time, main="Fairfield, CT Check-In Time", xlab="Seconds")
densityplot(fairfield.trimmed$voting.time, main="Fairfield, CT Voting Time", xlab="Seconds")
densityplot(fairfield.trimmed$line.time, main="Fairfield, CT Line to Scan Time", xlab="Seconds")
densityplot(fairfield.trimmed$scan.time, main="Fairfield, CT Scanning Time", xlab="Seconds")

#fayette time deltas and outputs
fayette$checkin.time <- as.numeric(difftime(fayette$leave.table,fayette$start.checkin,units = c("secs")))
fayette$voting.time <- as.numeric(difftime(fayette$end.voting,fayette$start.voting,units = c("secs")))
summary(fayette)
fayette.trimmed <- fayette
summary(fayette.trimmed)
boxplot(fayette.trimmed$checkin.time, main="Fayette, KY Check-In Time Boxplot", ylab="Seconds")
boxplot(fayette.trimmed$voting.time, main="Fayette, KY Voting Time Boxplot", ylab="Seconds")
densityplot(fayette.trimmed$checkin.time, main="Fayette, KY Check-In Time", xlab="Seconds")
densityplot(fayette.trimmed$voting.time, main="Fayette, KY Voting Time", xlab="Seconds")

#harris time deltas and outputs
harris$checkin.time <- as.numeric(difftime(harris$leave.table,harris$start.checkin,units = c("secs")))
harris$voting.time <- as.numeric(difftime(harris$end.voting,harris$start.voting,units = c("secs")))
summary(harris)
harris.trimmed <- harris
summary(harris.trimmed)
boxplot(harris.trimmed$checkin.time, main="Harris, TX Check-In Time Boxplot", ylab="Seconds")
boxplot(harris.trimmed$voting.time, main="Harris, TX Voting Time Boxplot", ylab="Seconds")
densityplot(harris.trimmed$checkin.time, main="Harris, TX Check-In Time", xlab="Seconds")
densityplot(harris.trimmed$voting.time, main="Harris, TX Voting Time", xlab="Seconds")

#harris early time deltas and outputs
harrisearly$checkin.time <- as.numeric(difftime(harrisearly$leave.table,harrisearly$start.checkin,units = c("secs")))
harrisearly$voting.time <- as.numeric(difftime(harrisearly$end.voting,harrisearly$start.voting,units = c("secs")))
summary(harrisearly)
harrisearly.trimmed <- harrisearly
summary(harrisearly.trimmed)
boxplot(harrisearly.trimmed$checkin.time, main="Harris, TX (Early) Check-In Time Boxplot", ylab="Seconds")
boxplot(harrisearly.trimmed$voting.time, main="Harris, TX (Early) Voting Time Boxplot", ylab="Seconds")
densityplot(harrisearly.trimmed$checkin.time, main="Harris, TX (Early) Check-In Time", xlab="Seconds")
densityplot(harrisearly.trimmed$voting.time, main="Harris, TX (Early) Voting Time", xlab="Seconds")

#Los Angeles (Pitzer) time deltas and outputs
lapitzer$checkin.time <- as.numeric(difftime(lapitzer$leave.table,lapitzer$start.checkin,units = c("secs")))
lapitzer$voting.time <- as.numeric(difftime(lapitzer$end.voting,lapitzer$start.voting,units = c("secs")))
summary(lapitzer)
lapitzer.trimmed <- lapitzer
summary(lapitzer.trimmed)
boxplot(lapitzer.trimmed$checkin.time, main="Los Angeles (Pitzer) Check-In Time Boxplot", ylab="Seconds")
boxplot(lapitzer.trimmed$voting.time, main="Los Angeles (Pitzer) Voting Time Boxplot", ylab="Seconds")
densityplot(lapitzer.trimmed$checkin.time, main="Los Angeles (Pitzer) Check-In Time", xlab="Seconds")
densityplot(lapitzer.trimmed$voting.time, main="Los Angeles (Pitzer) Voting Time", xlab="Seconds")

#Los Angeles (USC) time deltas and outputs
lausc$checkin.time <- as.numeric(difftime(lausc$leave.table,lausc$start.checkin,units = c("secs")))
lausc$voting.time <- as.numeric(difftime(lausc$end.voting,lausc$start.voting,units = c("secs")))
summary(lausc)
lausc.trimmed <- lausc
summary(lausc.trimmed)
boxplot(lausc.trimmed$checkin.time, main="Los Angeles (USC) Check-In Time Boxplot", ylab="Seconds")
boxplot(lausc.trimmed$voting.time, main="Los Angeles (USC) Voting Time Boxplot", ylab="Seconds")
densityplot(lausc.trimmed$checkin.time, main="Los Angeles (USC) Check-In Time", xlab="Seconds")
densityplot(lausc.trimmed$voting.time, main="Los Angeles (USC) Voting Time", xlab="Seconds")

#New York time deltas and outputs
ny$checkin.time <- as.numeric(difftime(ny$leave.table,ny$start.checkin,units = c("secs")))
ny$voting.time <- as.numeric(difftime(ny$end.voting,ny$start.voting,units = c("secs")))
ny$line.time <- as.numeric(difftime(ny$leave.line,ny$get.in.line,units = c("secs")))
ny$scan.time <- as.numeric(difftime(ny$end.scanning,ny$begin.scanning,units =c("secs")))
summary(ny)
ny.trimmed <- ny
summary(ny.trimmed)
boxplot(ny.trimmed$checkin.time, main="New York Check-In Time Boxplot", ylab="Seconds")
boxplot(ny.trimmed$voting.time, main="New York Voting Time Boxplot", ylab="Seconds")
boxplot(ny.trimmed$line.time, main="New York Line to Scan Time Boxplot", ylab="Seconds")
boxplot(ny.trimmed$scan.time, main="New York Scanning Time Boxplot", ylab="Seconds")
densityplot(ny.trimmed$checkin.time, main="New York Check-In Time", xlab="Seconds")
densityplot(ny.trimmed$voting.time, main="New York Voting Time", xlab="Seconds")
densityplot(ny.trimmed$line.time, main="New York Line to Scan Time", xlab="Seconds")
densityplot(ny.trimmed$scan.time, main="New York Scanning Time", xlab="Seconds")

#Richland time deltas and outputs
richland$checkin.time <- as.numeric(difftime(richland$leave.table,richland$start.checkin,units = c("secs")))
richland$voting.time <- as.numeric(difftime(richland$end.voting,richland$start.voting,units = c("secs")))
summary(richland)
richland.trimmed <- richland
summary(richland.trimmed)
boxplot(richland.trimmed$checkin.time, main="Richland Check-In Time Boxplot", ylab="Seconds")
boxplot(richland.trimmed$voting.time, main="Richland Voting Time Boxplot", ylab="Seconds")
densityplot(richland.trimmed$checkin.time, main="Richland Check-In Time", xlab="Seconds")
densityplot(richland.trimmed$voting.time, main="Richland Voting Time", xlab="Seconds")

#Riley time deltas and outputs
riley$checkin.time <- as.numeric(difftime(riley$leave.table,riley$start.checkin,units = c("secs")))
riley$voting.time <- as.numeric(difftime(riley$end.voting,riley$start.voting,units = c("secs")))
summary(riley)
riley.trimmed <- riley
summary(riley.trimmed)
boxplot(riley.trimmed$checkin.time, main="Riley, KS Check-In Time Boxplot", ylab="Seconds")
boxplot(riley.trimmed$voting.time, main="Riley, KS Voting Time Boxplot", ylab="Seconds")
densityplot(riley.trimmed$checkin.time, main="Riley, KS Check-In Time", xlab="Seconds")
densityplot(riley.trimmed$voting.time, main="Riley, KS Voting Time", xlab="Seconds")

#St. Louis time deltas and outputs
stlouis$checkin.time <- as.numeric(difftime(stlouis$leave.table,stlouis$start.checkin,units = c("secs")))
stlouis$voting.time <- as.numeric(difftime(stlouis$end.voting,stlouis$start.voting,units = c("secs")))
stlouis$line.time <- as.numeric(difftime(stlouis$leave.line,stlouis$get.in.line,units = c("secs")))
stlouis$scan.time <- as.numeric(difftime(stlouis$end.scanning,stlouis$begin.scanning,units =c("secs")))
summary(stlouis)
stlouis.trimmed <- stlouis
summary(stlouis.trimmed)
boxplot(stlouis.trimmed$checkin.time, main="St. Louis, MO Check-In Time Boxplot", ylab="Seconds")
boxplot(stlouis.trimmed$voting.time, main="St. Louis, MO Voting Time Boxplot", ylab="Seconds")
boxplot(stlouis.trimmed$line.time, main="St. Louis, MO Line to Scan Time Boxplot", ylab="Seconds")
boxplot(stlouis.trimmed$scan.time, main="St. Louis, MO Scanning Time Boxplot", ylab="Seconds")
densityplot(stlouis.trimmed$checkin.time, main="St. Louis, MO Check-In Time", xlab="Seconds")
densityplot(stlouis.trimmed$voting.time, main="St. Louis, MO Voting Time", xlab="Seconds")
densityplot(stlouis.trimmed$line.time, main="St. Louis, MO Line to Scan Time", xlab="Seconds")
densityplot(stlouis.trimmed$scan.time, main="St. Louis, MO Scanning Time", xlab="Seconds")

#Union time deltas and outputs
union$checkin.time <- as.numeric(difftime(union$leave.table,union$start.checkin,units = c("secs")))
union$voting.time <- as.numeric(difftime(union$end.voting,union$start.voting,units = c("secs")))
summary(union)
union.trimmed <- union
summary(union.trimmed)
boxplot(union.trimmed$checkin.time, main="Union, PA Check-In Time Boxplot", ylab="Seconds")
boxplot(union.trimmed$voting.time, main="Union, PA Voting Time Boxplot", ylab="Seconds")
densityplot(union.trimmed$checkin.time, main="Union, PA Check-In Time", xlab="Seconds")
densityplot(union.trimmed$voting.time, main="Union, PA Voting Time", xlab="Seconds")
