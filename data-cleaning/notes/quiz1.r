url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url = url1,destfile = "./quiz1-1.csv")
quiz1.1csv <- read.csv("quiz1-1.csv")
length(quiz1.1csv$VAL[!is.na(quiz1.1csv$VAL)][quiz1.1csv$VAL[!is.na(quiz1.1csv$VAL)] == 24])

url3 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(url = url3,destfile = "./quiz1-3.xlsx")
quiz1.3xlsx <- readxl::read_xlsx("./quiz1-3.xlsx",sheet = 1)
quiz1.3xlsx[18:23,7:15]

url4 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
# download.file(url = url4,destfile = "./quiz1-4.xml")
# quiz1.4xml <- xmlRoot(xmlParse(getURL(url4)),useInternalNodes=T)
library(XML)
quiz1.4xml <- xmlRoot(xmlTreeParse(sub("s","",url4), useInternalNodes = T))
quiz1.4xml_zipcode <- xpathSApply(quiz1.4xml,"//zipcode",xmlValue)
length(quiz1.4xml_zipcode[quiz1.4xml_zipcode == "21231"])

url5 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url = url5,destfile = "./quiz1-5.csv")
library(data.table)
quiz1.5csv <- fread("quiz1-5.csv",stringsAsFactors = T)
DT <- quiz1.5csv
mean(DT$pwgtp15,by=DT$SEX)
