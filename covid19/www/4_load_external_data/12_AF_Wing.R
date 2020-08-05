
# AFNAFS = vroom::vroom("C:/Users/taylo/Documents/CHAD/covid19/www/4_load_external_data/data_files/NAF.csv")
# AFNAFS = vroom::vroom("www/4_load_external_data/data_files/NAF.csv")
# AFNAFS = vroom::vroom("C:/Users/taylo/Documents/CHAD/covid19/www/4_load_external_data/data_files/NAF.csv")
# AFNAFS = vroom::vroom("www/4_load_external_data/data_files/NAF.csv")
# NAFList <- sort(unique(AFNAFS$NAF), decreasing = FALSE)
# AFWings<-dplyr::filter(AFNAFS,NAF %in% NAFList)
# WingList <- sort(unique(AFWings$Wing), decreasing = FALSE)
# WingList <- c("All",WingList)

#Constructing the cimdtest and himdtest matrices
# AFBaseLocations2 = vroom::vroom("C:/Users/taylo/Documents/CHAD_University/hd20193.csv")
# AFBaseLocations2<-data.frame(AFBaseLocations2)
# AFBaseLocations2$Latitude <- as.numeric(AFBaseLocations2$Latitude)
# AFBaseLocations2$Longitude <- as.numeric(AFBaseLocations2$Longitude)
# 
# 
# AFBaseLocations<-merge(AFBaseLocations2,CountyInfo, by.x = c("FIPS"), by.y = c("FIPS"))
# #only keep the useful columns

# #AFBaseLocations<-data.frame(AFBaseLocations$ID,AFBaseLocations$Base,AFBaseLocations$State,
# #                             AFBaseLocations$County.y,AFBaseLocations$Country1,AFBaseLocations$Branch,
# #                             AFBaseLocations$Operational,AFBaseLocations$Lat,AFBaseLocations$Long,
# #                             AFBaseLocations$'Major.Command',AFBaseLocations$FIPS)
# #colnames(AFBaseLocations)<-c("ID","Base","State","County","Country","Branch","Operational","Lat","Long","Major Command","FIPS")
# 
# # AFBaseLocations2<-AFBaseLocations[!duplicated(AFBaseLocations$'Base'), ]
# #
# x<-data.frame(AFBaseLocations2$Longitude,AFBaseLocations2$Latitude)
# y<-data.frame(CountyInfo$Longitude,CountyInfo$Latitude)
# cimd <- distm(y, x, fun=distHaversine)/1609.34
# colnames(cimd)<- AFBaseLocations2$Name

# x<-data.frame(AFBaseLocations$Long,AFBaseLocations$Lat)
# y<-data.frame(HospitalInfo$LONGITUDE,HospitalInfo$LATITUDE)
# himd <- distm(y, x, fun=distHaversine)/1609.34


# colnames(himd)<- AFBaseLocations2$Base
# 
# #write.csv(cimd,"C:/Users/taylo/Documents/CHAD_University/cimd.csv", row.names = FALSE)
# #write.csv(himd,"C:/Users/taylo/Documents/CHAD_University/himd.csv", row.names = FALSE)
# #write.csv(AFBaseLocations,"C:/Users/taylo/Documents/CHAD_University/UniversityLocations.csv", row.names = FALSE)
# #write.csv(GlobalData,"C:/Users/taylo/Documents/CHAD/covid19/www/4_load_external_data/data_files/GlobalData.csv", row.names = FALSE)


# himd1<-himd[,1:820]
# himd2<-himd[,821:1640]
# himd3<-himd[,1641:2460]
# himd4<-himd[,2461:3280]
# himd5<-himd[,3281:4100]
# himd6<-himd[,4101:4920]
# himd7<-himd[,4921:5740]
# himd8<-himd[,5741:6559]
# save(himd1, file = "himd1.rda")
# save(himd2, file = "himd2.rda") 
# save(himd3, file = "himd3.rda")
# save(himd4, file = "himd4.rda")
# save(himd5, file = "himd5.rda")
# save(himd6, file = "himd6.rda") 
# save(himd7, file = "himd7.rda")
# save(himd8, file = "himd8.rda")
# cimd1<-cimd[,1:820]
# cimd2<-cimd[,821:1640]
# cimd3<-cimd[,1641:2460]
# cimd4<-cimd[,2461:3280]
# cimd5<-cimd[,3281:4100]
# cimd6<-cimd[,4101:4920]
# cimd7<-cimd[,4921:5740]
# cimd8<-cimd[,5741:6559]
# save(cimd1, file = "cimd1.rda")
# save(cimd2, file = "cimd2.rda")
# save(cimd3, file = "cimd3.rda")
# save(cimd4, file = "cimd4.rda")
# save(cimd5, file = "cimd5.rda")
# save(cimd6, file = "cimd6.rda") 
# save(cimd7, file = "cimd7.rda")
# save(cimd8, file = "cimd8.rda")


# 
# setwd("C:/Users/taylo/Documents/CHAD_University/covid19/www/3_load_local_data/")
# save(cimd, file = "cimd.rda")
# save(himd, file = "himd.rda")
# save(AFBaseLocations, file = "AFBaseLocations.rda")
# save(AFNAFS, file = "AFNAS.rda")

# cimd<-vroom::vroom("www/4_load_external_data/data_files/cimd.csv")
# himd<-vroom::vroom("www/4_load_external_data/data_files/himd.csv")
# AFBaseLocations<-vroom::vroom("www/4_load_external_data/data_files/AFBaseLocations.csv")
# AFNAFS<-vroom::vroom("www/4_load_external_data/data_files/NAF_ID.csv") 

# AF NAF list is being loaded in local files now

# 
# setwd("C:/Users/taylo/Documents/CHAD/covid19/www/3_load_local_data/")
# save(cimd, file = "cimd.rda")
# save(himd, file = "himd.rda")
# save(AFBaseLocations, file = "AFBaseLocations.rda")
# save(AFNAFS, file = "AFNAS.rda")

