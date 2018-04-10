# vector(ex)
# length(x) : vetor의 원소의 갯수

x <- c(5, 4, 3, 2, 1)
length(x)
x[1]
x[c(1, 2, 3)]
x[-c(1, 2, 3)]

# vector sum
x <- c(1, 2, 3, 4)
y <- c(5, 6, 7, 8)
z <- c(1, 2)
w <- c(1, 2, 3)

2 + x
x + y
x + z
x + w

# all(), any(0
x <- 1:5
x>3
all(x>3)
all(x>3)

# names(), name(변수명)

names(x)

height <- c(80, 90, 70, 170)
names(height) <- c("A", "B", "C")
height




# sample(x, size, replace=FALSE, prob=
sample(10)
sample(45, 6)

# replace=TRUE : 복원추출
# head(x, n), tail(x, n)

x <- 1:100
head(x)
head(x, n=10)

tail(x)
tail(x, n=4)

sample(10, 3, replace=TRUE)
# 확률을 다르게 적용함
sample(10, 3, prob=(1:10)/55)

# 0~1까지 0.1 간격으로 증가하는 값을 출력
x <- seq(0, 1, by=0.1)
x

# 동일한 값, 위에는 
x[sample(length(x), 3)]
sample(x, 3)

x <- c(2, 4, -1, 3)
which(x > 2)

names(x) <- c("list", "2nd", "3rd", "4th")
which(x > 2)

arr <- array(1:3, c(2,4))  # 2*4 = 8개가 나와야 함
arr

arr[1,]    #1행 출력
arr[, 3]   #3열 출력

# array(data = NA, dim = length)
dimnamearr = list(c("A","B"),c("A","B","C","D"))
arr2 <- array(1:3, c(2,4), dimnames = dimnamearr)
arr2["A",]
arr2[,"C"]


# matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
# byrow=FALSE : data를 행 단위로 배치할지 여부 (기본 열 단위 배치)
tmp <- 1:12
tmp


matrix(tmp, nrow=3)
# byrow=TRUE: 1행부터 자료를 채워나감 
matrix(tmp, nrow=3, byrow=TRUE)

v1 <- c(1, 2, 3, 4)
v2 <- c(5, 6, 7, 8)
v3 <- c(9, 10, 11, 12)

# vector을 열 단위로 합침
cbind(v1, v2, v3)
# vector을 행 단위로 합침
rbind(v1, v2, v3)


# x: apply를 적용할 배열, MARGIN: 함수를 적용할 차원, FUN: 적용할 함수
m1 <- cbind(v1, v2, v3)
m1

# 행별로 평균을 출력
apply(m1, 1, mean)
# 열별로 평균을 출력
apply(m1, 2, mean)

# 요인(Factor)은 '범주형'자료를 저장함
# factor(x = character(), levels, labels = levels, exclude = NA, ordered = is.ordered(x), nmax = NA)
# exclude = NA : 사용하지 않을 값을 지정

x <- c(1, 2, 3, 4, 5)

# levels를 통해 자료중 1,2,3,4 네 개의 값만 요인으로 사용
factor(x, levels=c(1,2,3,4))
factor(x, levels=c(1,2,3,4), exclude=c(1,2))
#Levels: 3 < 4 라고도 찍힘
factor(x, levels=c(1,2,3,4), exclude=c(1,2), ordered=TRUE)

v <- c(1, 2, 3, 4)
x <- factor(v)
is.factor(x)
as.factor(x)
v
is.factor(v)
s <- as.factor(v)
s

# tapply(X, INDEX, FUN = NULL, ..., simplify = TRUE)
score <- c(92, 90, 82, 88, 78, 64, 82, 90)
subject <- c("k", "k", "m", "m", "m", "m", "k", "k")
tapply(score, subject, mean)

# data.frame() : 행열의 형태로 출력
# 서로 다른 기본 자료형을 갖고 있는 data를 모음 
name <- c("철수", "영희", "길홍")
age <- c(21, 24, 25)
gender <- c("M", "F", "M")
character <- data.frame(name, age, gender)
character

character[ ,2]
character[1, ]
character[3, 1]

# attach(), detach()
head(airquality)
Ozone
# 열의 이름을 변수명처럼 사용할 수 있음
attach(airquality)
Ozone[1:5]

Ozone = c(1, 2, 3)
attach(airquality)
Ozone
Month[1:5]


# with(data, expr, ...)
head(cars)
# attach를 사용하지 않고, with를 사용해서
# 바로 열 이름을 변수명으로 사용가능
mean(cars$speed)
mean(cars$dist)

with(cars, mean(speed))
with(cars, mean(dist))


# subset() : 조건에 맞는 부분집합을 추출
#select : 보고 싶은 변수만 지정가능
airquality
subset(airquality, Temp > 80)
# Ozone과 Temp만을 출력한 결과
subset(airquality, Temp > 80, select = c(Ozone, Temp))
# Ozone과 Temp를 제외한 결과
subset(airquality, Temp > 80, select = -c(Ozone, Temp))

# NA를 제외한 값을 출력함
str(airquality)
str(na.omit(airquality))

#data frame은 모든 속성(열 요소)들의 크기가 일정
# List: 서로 다른 기본 자료형을 가질 수 있음/ 순서존재
title <- "My List"
ages <- c(31, 41, 21)
numbers <- matrix(1:9, nrow=3)
names <- c("Baby", "Gentle", "none")
listEx <- list(title, ages, numbers, names)
listEx

listEx[[1]]

#
listEx2 <- list(title=title, age=ages, number=numbers, name=names)
listEx2
listEx2[[1]]
listEx2$title
listEx2$age
listEx2$number
listEx2$name

# is.list(x), as.list(x)
x <- list(c(1,2,3,4), c(3,2,1))
v <- c(1,2,3,4)
is.list(v)
a.l <- as.list(v)
a.l

# laaply(), sapply()
# laaply(X, FUN, ...) 
# : 리스트의 각 요소에 평균을 구하고 결과를 리스트로 반환
# saaply(X, FUN, ..., simplify = TRUE) 
# : 백터로 결과가 나옴
# FUN : 적용할 함수
# simplify:TRUE(디폴트)스칼라로, FALSE이면 리스트의 배열로 반환
# logic : 
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE))
lapply(x, mean)
sapply(x, mean)

# 자료구조의 특정 원소 가져오기
ex <- c(1, 3, 7, NA, 12)
ex[ex < 10]
ex[ex %% 2 == 0]
# NA인 것을 추출
ex[is.na(ex)]
ex[!is.na(ex)]
ex[ex %% 2 == 0 & !is.na(ex)]

name <- c("철수", "영희", "길동")
age <- c(21, 20, 34)
gender <- factor(c("M","F","M"))
# 열 중심 행렬구성
characters <- data.frame(name, age, gender)
characters
characters[characters$gender == "F", ]
characters[characters$age < 30 & characters$gender=="M", ]


# ifelse(test, yes, no)
x <- c(6:-4)
options(digits=3)
# 값에 루트를 씌워줌
# 경고메시지 발생 : 루트를 사용할 수 없는 값 존재
sqrt(x)
sqrt(ifelse(x >= 0, x, NA))


# if문
x <- c(1, 2, 3)
x <- factor(x)

if(is.factor(x)) length(x)

if(is.factor(x)) {
  length(x)
} else {
  sum(x)
}


x <- c(1, 2, 3)
x <- list(x)

if(is.factor(x)) {
  length(x)
} else if(is.integer(x)) {
  sum(x)
} else {
  paste(x, "element")
}


# repeat 
i <- 20
repeat {
  if(i > 25) {
    break
  } else {
    print(i)
    i <- i + 1
  }
}


# while문
dan <- 2
i <- 1
while (i < 10) {
  times <- i * dan
  print(paste(dan, "X", i, " = ", times))
  i <- i + 1
}


# for문
dan <- 9
i <- 1
for(i in 1:9) {
  times <- i * dan
  # 결과값이 한 번에 묶여서 나오도록 paste를 이용해 출력
  # +를 사용해 연결할 경우,
  # in dan + "X" : non-numeric argument란 오류가 뜸
  print(paste(dan , "X", i , " = " , times))
}


