setwd('C:\\Users\\RED\\PycharmProjects\\Data Analysis R')

install.packages('ISwR')
library(ISwR) # thu vien

igfdata <- juul$igf1 # data

# Vd9:

mean(igfdata, na.rm = TRUE) # GTTB
var(igfdata, na.rm = TRUE)  # Phuong sai
sd(igfdata, na.rm = TRUE)   # Do lech chuan
desc <- function(x)
{
  av <- mean(x, na.rm = TRUE)
  sd <- sd(x, na.rm = TRUE)
  se <- sd/sqrt(length(x))
  c(MEAN=av, SD=sd, SE=se)
}
desc(igfdata) # sai so chuan
summary(igfdata) # thong ke

sex = juul$sex
by(juul, sex, summary) # thong ke theo gioi tinh 

op <- par(mfrow=c(2,2))
hist(juul$age)
hist(juul$igf1)
hist(juul$tanner)
hist(juul$testvol)

# Vd10:

t.test(juul$age, mu=30) # t test with mean = 30 

# Vd11:

t.test(juul$igf1 ~ sex) # t test depend on sex
t.test(juul$igf1 ~ sex, var.equal=TRUE) # t test depend on sex with the same var

# Vd12:

before <- c(180, 140, 160, 160, 220, 185, 145, 160, 160, 170)
after <- c(170, 145, 145, 125, 205, 185, 150, 150, 145, 155)
bp <- data.frame(before, after)

t.test(before, after, paired=TRUE) # t test bat cap 
t.test(before, after, paired=FALSE)# t test doc lap

# Vd13:

prop.test(69, 100, 0.50) # 69 female, 31 male
binom.test(69, 100, 0.50)

# Vd14:

fracture <- c(7, 20)
total <- c(100, 110)
prop.test(fracture, total)








