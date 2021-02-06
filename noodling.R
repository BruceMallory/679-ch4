require(ISLR)
names(Smarket)
summary(Smarket)
?Smarket
pairs(Smarket,col=Smarket$Direction)
glm.fit=glm(Direction~Lag1+Lag2+Lag3+Lag4+Lag5+Volume,
            data=Smarket, family=binomial)
summary(glm.fit)
glm.probs=predict(glm.fit,type="response")
glm.probs[1:5]
plot(predict(glm.fit),residuals(glm.fit))
df <- Smarket


x=seq(1,100,2)
y1=rbinom(25,1,.8)
y2=rbinom(25,1,.2)
y=c(y1, y2)

test.fit <- glm(y~x,family=binomial)
summary(test.fit)
predict(test.fit)
plot(predict(test.fit), residuals(test.fit))
predict(test.fit)[1]
predict(test.fit, type="response")[1]
plot(x,y)

glm.fit=glm(Direction~Lag1+Lag2+Lag3+Lag4+Lag5+Volume,
            data=Smarket, family=binomial)
predict(glm.fit,type="response")[1]
predict(glm.fit)[1]
