# https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Normal.html

# ?function_name -> help
?rnorm()
rnorm(n = 5 , mean = 10, sd = 15)
rnorm(n = 5 , mean = 10)
rnorm(n = 5 , sd = 15)
rnorm(n = 5)

x <- c('a','b','c')

?c()
?seq()
seq(from = 10 , to = 20,length.out = 100)
seq(from = 10 , to = 20,length.out = 4)
seq(from = 10 , to = 20,along.with = x)


?rep()
rep(5 , 10)
rep(5:6 , 10)
rep(5:6 , times = 10)
rep(5:8 , each = 3)
rep(x , each = 3)


is.character()
is.array()
is.numeric()
is.integer()
is.double()


typeof()
?sqrt()
paste()
class(rep(x , each = 3))

names(methods:::.BasicFunsList)






