
#Introducción de datos

data <- read.csv(file = 'estudio.csv', sep=";")

#Estadísticos básicos

mean(data$dias_hospitalizacion)
median(data$dias_hospitalizacion)
sd(data$dias_hospitalizacion)

summary(data$dias_hospitalizacion)

#Diagrama de cajas

boxplot(data$dias_hospitalizacion~data$grupo)

#Test de la t

t.test(data$dias_hospitalizacion~data$grupo, alternative = "two.sided", var.equal = FALSE)

#Normalidad

hist(data$dias_hospitalizacion)

qqnorm(data$dias_hospitalizacion, pch = 1, frame = FALSE)
qqline(data$dias_hospitalizacion, col = "steelblue", lwd = 2)

#Wilcoxon. Test comparación no paramétrico

wilcox.test(data$dias_hospitalizacion~data$grupo, exact = FALSE)


