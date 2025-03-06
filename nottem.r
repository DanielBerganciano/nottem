# Cargar el dataset
data("nottem")

# Inspeccionar la estructura
print(class(nottem))  # Clase del objeto
print(summary(nottem)) # Resumen estadístico

# Graficar la serie temporal
plot(nottem, main = "Temperaturas Mensuales en Nottingham (1920-1939)",
     xlab = "Año", ylab = "Temperatura", col = "blue")

# Descomposición aditiva de la serie temporal
decomposed <- decompose(nottem)

# Graficar la descomposición
plot(decomposed)

# Graficar ACF y PACF
par(mfrow=c(1,2))  # Configurar dos gráficos en una fila
acf(nottem, main="ACF de la serie nottem")
pacf(nottem, main="PACF de la serie nottem")

# Cargar la librería
library(tseries)

# Prueba de Dickey-Fuller aumentada
adf.test(nottem)

# Diferenciación de primer orden
nottem_diff <- diff(nottem)

# Graficar la serie diferenciada
plot(nottem_diff, main = "Serie Diferenciada de nottem",
     xlab = "Año", ylab = "Diferencia de Temperatura", col = "red")

# Repetir la prueba de estacionariedad
adf.test(nottem_diff)

# Gráfico de caja para detectar outliers
boxplot(nottem, main="Detección de valores atípicos", col="orange")

# Configurar Git (si no lo has hecho antes)
usethis::use_git_config(user.name = "TuNombre", user.email = "TuEmail")

# Crear el repositorio en GitHub
usethis::use_github()