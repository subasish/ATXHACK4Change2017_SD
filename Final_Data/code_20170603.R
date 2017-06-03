setwd("C:/Users/s-das/Syncplicity Folders/MY_Projects/165917 Bike-Veh Speed/Proposal/ATX Hack for Change/Final_Data")

aa1 <- read.csv("2015-2011_Austin_Bicycle_PP_CSV.csv")
aa2 <- read.csv("Aus_Bike_Crsh_withBlockgr.csv")

names(aa2)
aa3 <- aa2[c(1:15, 23)]
names(aa3)

aa4 <- merge(aa3, aa1, by="Crash_UP_ID")
dim(aa4)

names(aa4)

write.csv(aa4, "2011_2015_Austin_Bicycle_Crash_withBlockgr.csv")

mm <- read.csv("2011_2015_Austin_Bicycle_Crash_withBlockgr.csv")
nn <- read.csv("2015-2011_Austin_Bicycle_PP_withLL_GT10_withbikelane.csv")
names(nn)



kk <- merge(mm, nn, by="Street_Name")
dim(kk)
dim(mm)
dim(nn)

write.csv(kk, "2011_2015_Austin_Bicycle_Crash_withBlockgr_RoadwaysCrash_gt_9.csv")