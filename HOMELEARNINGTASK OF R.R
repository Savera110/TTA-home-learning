# TASK 1
data(package = .packages(all.available = TRUE))
data() 
install.packages("ggplot2")
library(ggplot2)

ggplot2::economics

qplot(data = economics, x = uempmed, y = unemploy, geom = "point")
qplot(data = economics, x = unemploy, geom = "density")

ggplot2::msleep
qplot(data = msleep, y = genus, geom = "bar")
qplot(data = msleep, x = vore, geom = "bar")

# TASK 1

a <- c(1,2,3,4,5)
b <- c(6,7,8,9,10)
c <- c(0,2,4,6,8)


combined <- rbind(a,b,c)
combined <- matrix(combined, nrow=3, ncol=5)
combined

plot(combined, xlab = "ABC", ylab = "abc", type ="o", pch=15, col=1:3)

# TASK 2

Name <- c("Ali", "Raza", "Muhammad", "Savera", "George")
Age <- c(32L, 34L, 68L, 32L, 40L)
Role <- c("Sr.Data Scientist", "D.S Manager", "Manager","Jr.Data Scientist","Data Analyst")
Length_of_service <- c(4L, 10L, 30L, 1L, 7L)

frame <- data.frame(Name, Age, Role, Length_of_service)  

print (frame)

# TASK 3
data <- seq(1:20)
data_square <- data^2
qplot( x = data, y = data_square, geom = "point")

# TASK 4
subjects <- c("Chemistry", "Biology", "Physics", "Maths", " Urdu")
students <- c(33L, 15L, 32L, 50L, 20L)
data_110 <- data.frame(subjects, students)
data_110
qplot(data = data_110, y = subjects, geom = "bar")



# TASK 5

name <- readline("Enter your name: ")
paste("Welcome", name)
age <- readline("Enter your age: ")
print(age)


# TASK 6

data89 <- seq(20:50)
data89_mean <- mean(data89)
data89_mean
data89_sum <- sum(data89)
data89_sum

# TASK 7

vector1 = sample(-50:50, 10,  replace = TRUE)
print("content of vector:")
print("10 random integers btw -50 and 50:")
print(vector1)