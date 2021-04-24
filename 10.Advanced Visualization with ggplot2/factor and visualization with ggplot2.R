getwd()
setwd("G:/R Programing/10.Advanced Visualization with ggplot2")
getwd()

movies <- read.csv("P2-Movie-Ratings.csv")

head(movies)
colnames(movies) <- c("Film" , "Genre" , "CriticRatings" , "Audianceratings" , "BudgetRatings"  , "ReleaseYear")
head(movies)
tail(movies)
str(movies)
summary(movies)

# ---------------------------- factor
head(movies$ReleaseYear)
levels(movies$ReleaseYear)
factor(movies$ReleaseYear)

is.factor(movies$ReleaseYear)

# movies$ReleaseYear <- as.factor(movies$ReleaseYear)
movies$ReleaseYear <- factor(movies$ReleaseYear)
is.factor(movies$ReleaseYear)
levels(movies$ReleaseYear)

movies$Genre <- factor(movies$Genre)
is.factor(movies$Genre)
levels(movies$Genre)

summary(movies)
str(movies)


# Chart
# 1. Data -> 2.Aesthetics -> 3.Geometries -> 4. Statistics -> 5. Facet
# 6. Co-ordinates -> 7. Theme

#-------------------------> Aesthetic

library(ggplot2)

??ggplot
?ggplot2
ggplot(data = movies  , aes(x=CriticRatings , y = Audianceratings))

#---------------------add geometry

ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings)) +
                        geom_point()

ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings)) +
                        geom_point() +
                        geom_line()


#----------------------add color

ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings , 
                          colour =  Genre)) +
                          geom_point()


#-----------------------add size

ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings , 
                           colour =  Genre , size = Genre)) +
                            geom_point()


#-----------------------add size the better way

ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings , 
                           colour =  Genre , size = BudgetRatings)) +
                            geom_point()


#------------------------Ploting with layers

p <- ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings , 
                           colour =  Genre , size = BudgetRatings)) 

p
#-----------------------point
p+ geom_point()

#-----------------------line
p+ geom_line()

#-----------------------Multipal Layers
p+ geom_line() + geom_point()
p+ geom_point()+geom_line()

#----------------------Aesthetic Overriding
 
q <- ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings , 
                                colour =  Genre , size = BudgetRatings))

#----------------------add geom layer
q + geom_point()

#----------------------Overriding Aesthetic

#exmple1

q + geom_point(aes(size=CriticRatings))
q + geom_point(aes(size=I(2)))


#example2
q + geom_point(aes(colour = BudgetRatings))

# just override not modifying
#q remains same
q + geom_point()

#example3
q + geom_point(aes(x = BudgetRatings))
q + geom_point(aes(x = BudgetRatings)) + xlab("BudgetRatings $$$")
q + geom_point(aes(x = BudgetRatings)) + xlab("BudgetRatings $$$") + ylab("Audianceratings$$$")


#example4
p+ geom_point()+geom_line()

#line and point size edit
p+ geom_point(size = 1)+geom_line()
p+ geom_point(size = 2)+geom_line(size = 1 )


#---------------------- Mapping Vs Settings
r <- ggplot(data = movies  ,aes(x=CriticRatings , y = Audianceratings))
r
r + geom_point()

#Add color
#1.What we have done so far => Mapping
r + geom_point(aes(colour = Genre))

# Settings
r + geom_point(colour = "DarkGreen")

#Error
r + geom_point(aes(colour = "DarkGreen"))


#-------------- Mappings   e aesthetic function use

r + geom_point(aes(colour = BudgetRatings))

#--------------Settings   e aes function use hbe na
r + geom_point(size = 1)

#Error
#r + geom_point(aes(size = 10))

# Histogram and density chart

s <- ggplot(data = movies  , aes(x = BudgetRatings))
s
s + geom_histogram()

s + geom_histogram(binwidth = 10)
s + geom_histogram(binwidth = 7)
s + geom_histogram(binwidth = 5)

#add color                                           # only fill = Genre set wise
s + geom_histogram(binwidth = 5 , fill = "Black")    # setting
s + geom_histogram(binwidth = 5 , aes(fill = Genre)) # mapping

#add border
s + geom_histogram(binwidth = 5 , aes(fill = Genre),colour = "Black")


#Sometime you may need density chart

s + geom_density()
s + geom_density(aes(fill = Genre))
s + geom_density(aes(fill = Genre),position = "stack")


# starting layers tips

t <- ggplot(data = movies , aes(x =  Audianceratings))
t
t + geom_histogram(fill="White",binwidth =5 ,colour = "Blue")

# another way
t <- ggplot(data = movies)

t + geom_histogram( aes(x =  Audianceratings),
                    fill="White",binwidth =5 ,
                    colour = "Blue")
#>>>>>>>>>>>>

t + geom_histogram( aes(x =  CriticRatings),
                    fill="White",binwidth =5 ,
                    colour = "Blue")


t <- ggplot()

# statistical transformation

?geom_smooth

u <- ggplot(data = movies , aes(x = CriticRatings , y = Audianceratings ,colour =Genre))

u + geom_point()
u + geom_point() + geom_smooth()
u + geom_point() + geom_smooth( fill = NA)

#--------------------> Boxplots

u <- ggplot(data = movies , aes(x = Genre , 
                                y = Audianceratings ,
                                colour =Genre))

u + geom_boxplot()
u + geom_boxplot() + geom_point()
u + geom_boxplot(size = 1.2) + geom_point()

# tip or hack
u + geom_boxplot(size = 1.2) + geom_jitter()

#another way
u + geom_jitter() + geom_boxplot(size = 1.2 , alpha = 0.5) 

#-----------------------> Using Facets

v <- ggplot(data = movies ,aes(x = BudgetRatings))
v + geom_histogram(binwidth = 10,aes(fill = Genre), colour = "Black")


# facets
?facet_grid()
v + geom_histogram(binwidth = 10,aes(fill = Genre), colour = "Black")+
                    facet_grid(Genre~. ,scales = "free") # xxx~. or .~xxx or xxx~xxx


# scatterplot
w <- ggplot(data = movies , aes(x = CriticRatings , y = Audianceratings ,colour =Genre))
w + geom_point()
w + geom_point(size = 3)
# facet
w + geom_point(size = 3) +
    facet_grid(Genre~.)

w + geom_point(size = 3) +
    facet_grid(.~ReleaseYear)


w + geom_point(size = 3) +
    facet_grid(Genre~ReleaseYear)



w + geom_point(size = 3) +
    geom_smooth()+
    facet_grid(Genre~ReleaseYear)

w + geom_point(aes(x = BudgetRatings)) +
    geom_smooth(fill=NA)+
    facet_grid(Genre~ReleaseYear)


# ---------------Co-ordinates


#limits
#Zoom
m <- ggplot(data = movies ,aes(x = CriticRatings ,
                               y = Audianceratings ,
                               size = BudgetRatings,
                               colour = Genre))
m + geom_point()

m + geom_point() + 
    xlim(50,100) +
    ylim(50,100)

# won't work well always

v + geom_histogram(binwidth = 10,aes(fill = Genre), colour = "Black")+
    ylim(0,50)

v + geom_histogram(binwidth = 10,aes(fill = Genre), colour = "Black")+
    ylim(0,50) +
    xlim(0,200)


# Actuall zoom with no error

v + geom_histogram(binwidth = 10,aes(fill = Genre), colour = "Black")+
    coord_cartesian(ylim = c(0,50))

v + geom_histogram(binwidth = 10,aes(fill = Genre), colour = "Black")+
    coord_cartesian(ylim = c(0,50) , xlim = c(0,200))


w + geom_point(aes(x = BudgetRatings)) +
    geom_smooth()+
    facet_grid(Genre~ReleaseYear)

w + geom_point(aes(x = BudgetRatings)) +
    geom_smooth()+
    facet_grid(Genre~ReleaseYear)+
    coord_cartesian(ylim = c(0,100))



w + geom_point(aes(x = BudgetRatings)) +
    geom_smooth()+
    facet_grid(Genre~ReleaseYear)+
    coord_cartesian(ylim = c(0,100) , xlim = c(0,200))





# ---------------------------> Theme
o <- ggplot(data = movies ,aes(x = BudgetRatings))
h <- o + geom_histogram(binwidth = 10,aes(fill = Genre), colour = "Black")
h

# --------------------axis label

h + xlab("Money Axis") +
    ylab("Number of Movies")

# --------------------label formatting
h + xlab("Money Axis") +
    ylab("Number of Movies")+
    theme(axis.title.x = element_text(colour = "DarkGreen", size =20),
          axis.title.y = element_text(colour = "Red" , size =20))
         

# tick mark formatting
h + xlab("Money Axis") +
    ylab("Number of Movies")+
    theme(axis.title.x = element_text(colour = "DarkGreen", size =20),
          axis.title.y = element_text(colour = "Red" , size =20),
          axis.text.x = element_text(size =15),
          axis.text.y = element_text(size =15))
    
    
?theme

# legend formatings
h + xlab("Money Axis") +
    ylab("Number of Movies")+
    theme(axis.title.x = element_text(colour = "DarkGreen", size =20),
          axis.title.y = element_text(colour = "Red" , size =20),
          axis.text.x = element_text(size =15),
          axis.text.y = element_text(size =15),
          legend.title = element_text(size = 15),
          legend.text = element_text(size = 15),
          legend.position = c(1,1),    # 0,0   0,1   1,0   1,1
          legend.justification = c(1,1))

#title

h + xlab("Money Axis") +
    ylab("Number of Movies")+
    ggtitle("Movie Budget Distribution")+
    theme(axis.title.x = element_text(colour = "DarkGreen", size =20),
          axis.title.y = element_text(colour = "Red" , size =20),
          axis.text.x = element_text(size =15),
          axis.text.y = element_text(size =15),
          legend.title = element_text(size = 15),
          legend.text = element_text(size = 15),
          legend.position = c(1,1),
          legend.justification = c(1,1),
          plot.title = element_text(size = 20 , colour = "Blue" ,hjust = 0.5),
          ) #,family = "Courier"

str(movies)







