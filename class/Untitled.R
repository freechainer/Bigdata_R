# 문제 3번
mtcars
class(mtcars)
dim(mtcars)
str(mtcars)
help("mtcars")
# [, 1]	mpg	Miles/(US) gallon
# [, 2]	cyl	Number of cylinders
# [, 3]	disp	Displacement (cu.in.)
# [, 4]	hp	Gross horsepower
# [, 5]	drat	Rear axle ratio
# [, 6]	wt	Weight (1000 lbs)
# [, 7]	qsec	1/4 mile time
# [, 8]	vs	Engine (0 = V-shaped, 1 = straight)
# [, 9]	am	Transmission (0 = automatic, 1 = manual)
# [,10]	gear	Number of forward gears
# [,11]	carb	Number of carburetors

max.mpg <- max(mtcars$mpg)
rownames(mtcars[mtcars$mpg == max.mpg,])



max(mtcars[,c('mpg')])
rownames(subset(mtcars, mpg==max.mpg))


min(subset(mtcars, gear==4)[,c('mpg')])
rownames(subset(mtcars, gear==4 & mpg==17.8))

mtcars["Honda Civic",c('mpg','gear')]

PFmtg <- mtcars['Pontiac Firebird',c('mpg')]
PFmtg 
 
colMeans(subset(mtcars, mpg > PFmtg)['mpg'])

unique(mtcars[,'gear'])

# 문제 4번

airquality
class(airquality)
head(airquality)
max(airquality['Temp']),[c('Month','Day')]