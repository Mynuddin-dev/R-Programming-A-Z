

?matplot

FieldGoals
t(FieldGoals)
matplot(t(FieldGoals))
matplot(t(FieldGoals), type = "b")
matplot(t(FieldGoals), type = "b",pch = 15:18)

matplot(t(FieldGoals), type = "b" ,pch = 15:18 , col = c(1:4,6))

matplot(t(FieldGoals/Games), type = "b" ,pch = 15:18 , col = c(1:4,6))
legend("bottomleft",inset = 0.01 , legend = Players ,pch = 15:18 ,col = c(1:4,6),horiz = F)


matplot(t(FieldGoals/FieldGoalAttempts), type = "b" ,pch = 15:18 ,col = c(1:4,6))
legend("bottomleft",inset = 0.01 , legend = Players ,pch = 15:18 ,col = c(1:4,6),horiz = F)

t(FieldGoals / Games)


# 1-character string giving the type of plot desired. The following values are 
# possible, for details, see plot: "p" for points, "l" for lines, "b" for both 
# points and lines, "c" for empty points joined by lines, "o" for overplotted points
# and lines, "s" and "S" for stair steps and "h" for histogram-like vertical lines.
# Finally, "n" does not produce any points or lines



# pch = 19: solid circle,
# 
# pch = 20: bullet (smaller solid circle, 2/3 the size of 19),
# 
# pch = 21: filled circle,
# 
# pch = 22: filled square,
# 
# pch = 23: filled diamond,
# 
# pch = 24: filled triangle point-up,
# 
# pch = 25: filled triangle point down.