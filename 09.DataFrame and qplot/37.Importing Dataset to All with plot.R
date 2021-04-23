
?read.csv()

# Method 01:Select The File Manually

states <- read.csv(file.choose())
states

# Getting and Setting the Working Directory  in R:
getwd()

# Methood 02

setwd("G:\\R\\R Programing\\09.DataFrame")
getwd()

rm(states)

#if the file is available in the current working directory

#Method 03 :Right side > File > ... >select your folder > More >Set as Working Directory
states <- read.csv("P2-Demographic-Data.csv")
states


# --------------------------------> Exploring data
states
nrow(states)
ncol(states)

rownames(states)
colnames(states)

head(states)
tail(states)
head(states , n=10)
tail(states , n=8)


str(states) #str()  runif() rnorm() interview Q

?runif()

summary(states)

typeof(states$Income.Group) #it shoulde be factor


#-----------------------------> using $ sign 

states
head(states)
states[3,3]
states[3,"Birth.rate"]

states["Angola",3]  #colun has name but row is not ,its number

states$Internet.users
states[,"Internet.users"]
states[["Internet.users"]]
states$Internet.users[2]

levels(states$Internet.users)
levels(states$Country.Name)
levels(states$Country.Code)

x <- states$Income.Group
x
x <- as.factor(x)
typeof(x)
class(x)

levels(x)

states$Income.Group
levels(states$Income.Group)

states$Income.Group <- as.factor(states$Income.Group)
str(states)
levels(states$Income.Group)


   
#-----------------------------> Basic Operation Of DataFrame

states[1:10 ,]
states[4:9 ,]

states[c(4,100),]
states[,c(2,5)]

#Remember how the [] Works
states[1,]
is.data.frame(states[1,]) # no need to drop = F as like matrices
states[,1]
is.data.frame(states[,1])

states[,1,drop = F]
is.data.frame(states[,1,drop = F])

#Multiply Column
states$Birth.rate * states$Internet.users
states$Birth.rate + states$Internet.users
head(states)

#add column
head(states)
states$BR_IU <-states$Birth.rate *states$Internet.users
head(states)

#test of knowledge
states$xyz <- c(1:5)
head(states , n=13)

#remove a column
states$BR_IU <- NULL
states$xyz <- NULL
head(states)


#--------------------------> filtering DataFrames 
head(states)
head(states$Internet.users)

states$Internet.users < 2
filter <- states$Internet.users < 2
filter

states[filter,]        # filter is a logical vector

states[states$Birth.rate > 40,]
states[states$Birth.rate > 40 & states$Internet.users < 2,]
states[states$Income.Group == "High income",]

levels(states$Income.Group )
states[states$Country.Name == "Malta",]




#-------------------------> Introduction to qplot 

#install.packages("ggplot2")   if it is not installed
library(ggplot2)
?qplot
qplot(data = states , x = Internet.users)   # once you set the data set dont need use $ sign as like Stases$Internate.user
qplot(data = states , x = Internet.users , bins = 30)
qplot(data = states , x = Income.Group , y = Birth.rate)
qplot(data = states , x = Income.Group , y = Birth.rate ,  size = 3)
qplot(data = states , x = Income.Group , y = Birth.rate ,  size = 10)
qplot(data = states , x = Income.Group , y = Birth.rate ,  size = I(3))
qplot(data = states , x = Income.Group , y = Birth.rate , size = I(3) , color = "blue")
qplot(data = states , x = Income.Group , y = Birth.rate , size = I(3) , color = I("blue")) # here geom = "auto"
qplot(data = states , x = Income.Group , y = Birth.rate , geom = "boxplot")



#-------------------------> Visualization what we need

qplot(data = states , x = Internet.users ,y = Birth.rate)
qplot(data = states , x = Internet.users ,y = Birth.rate , size =I(4) )
qplot(data = states , x = Internet.users ,y = Birth.rate , size =I(4) ,geom = "auto")
qplot(data = states , x = Internet.users ,y = Birth.rate , size =I(4) ,color = "blue")
qplot(data = states , x = Internet.users ,y = Birth.rate , size =I(4) ,color = I("red"))
qplot(data = states , x = Internet.users ,y = Birth.rate ,color = Income.Group , size =I(4))




#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

#(c) Kirill Eremenko, www.superdatascience.com

mydf <- data.frame(Countries_2012_Dataset , Codes_2012_Dataset , Regions_2012_Dataset)
head(mydf)
#colnames (mydf) <-(c("Country" , "Code" ,"Regions"))
#head(mydf)
rm(mydf)


mydf <- data.frame(Country =Countries_2012_Dataset ,Code = Codes_2012_Dataset , Regions = Regions_2012_Dataset)
head(mydf)
tail(mydf)
summary(mydf)



#----------------------- Merging Dataframe


colnames(states)
colnames(mydf)

head(states)
head(mydf)
tail(mydf)

?merge.data.frame
states$Country.Code
mydf$Code

merged <- merge(states , mydf , by.x = "Country.Code" , by.y = "Code")  # by.x from states and by.y from mydf
head(merged)
merged$Country

rm(merged)

# merged <- merge(states , mydf , by.x = "Country.Name" , by.y = "Country")  # by.x from states and by.y from mydf
# head(merged)
# merged$Code

merged$Country <- NULL
head(merged)

head(merged ,n =13)

summary(merged)
str(merged)

merged$Income.Group <- as.factor(merged$Income.Group)
merged$Regions <- as.factor(merged$Regions)
head(merged)
str(merged)




#------------------------> Visualization with new split 

qplot(data = merged, x = Internet.users , y =Birth.rate)
qplot(data = merged, x = Internet.users , y =Birth.rate ,size = I(3))
qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , size = I(3))

# -----------------------> shape

qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , shape =I(17), size = I(3))
qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , shape =I(18), size = I(3))
qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , shape =I(15), size = I(3))
qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , shape =I(16), size = I(3))
qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , shape =I(21), size = I(3))
qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , shape =I(22), size = I(3))

# 0-25

#------------------------> Transparency => alpha - transparency of a geom (0=transparent ... 1=opaque)

qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions , 
      shape =I(19), size = I(3),
      alpha=I(0.8)
      )

#-------------------------> Title
qplot(data = merged, x = Internet.users , y =Birth.rate ,color = Regions, 
      shape =I(19), size = I(3),
      alpha=I(0.6) ,
      main = "Birth Rate VS Internet Users"
) 






#...........Reading From Excel(.xls and .xlsx) in R......
#read data from excel (.xls and .xlsx) file in R
install.packages("xlsx")

library(xlsx)
getwd()

setwd("G:\\R\\R Programing\\09.DataFrame")

df22 <- read.xlsx("P2-Demographic-Data.xlsx", sheetIndex = 1)
df22
str(df22)
rm(df22)

#By readr library
library(readr)
train <- read_csv("F:/IIT,BSSE/Fifth Semister/Data Science and Anaytics/train.csv")
View(train)






#dimaentionaly curse
