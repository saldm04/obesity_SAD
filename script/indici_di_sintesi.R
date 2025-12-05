library(moments)

# Seleziona le variabili numeriche (sono le stesse per tutti)
num_cols <- sapply(df, is.numeric)

# Statistiche per l'intero dataset
num_summary   <- data.frame(
  Min    = sapply(df[,   num_cols], min,    na.rm = TRUE),
  Max    = sapply(df[,   num_cols], max,    na.rm = TRUE),
  Mean   = sapply(df[,   num_cols], mean,   na.rm = TRUE),
  Median = sapply(df[,   num_cols], median, na.rm = TRUE)
)

num_summary

hist(df$Age,
     main = "Istogramma di Age",
     xlab = "Età (anni)",
     ylab="Frequenza",
     xlim = c(10,70),
     ylim = c(0,900),
     col="lightblue",
     labels = TRUE)

hist(df$Height,
     main = "Istogramma di Height",
     xlab = "Altezza (metri)",
     ylab="Frequenza",
     xlim = c(1.40,2),
     ylim=c(0,400),
     col="lightpink",
     labels = TRUE)

hist(df$Weight,
     main = "Istogramma di Weight",
     xlab = "Peso (kg)",
     ylab="Frequenza",
     xlim = c(0,200),
     ylim=c(0,350),
     col="lightgreen",
     labels = TRUE)

skew_age <- skewness(df$Age)
skew_height <- skewness(df$Height)
skew_weight <- skewness(df$Weight)

skew_age
skew_height
skew_weight


# Creo la tabella con le statistiche richieste
num_dispersion <- data.frame(
  Varianza = sapply(df[, num_cols], var, na.rm = TRUE),
  Deviazione_Standard = sapply(df[, num_cols], sd, na.rm = TRUE),
  CV = sapply(df[, num_cols], function(x) sd(x, na.rm = TRUE) / mean(x, na.rm = TRUE)),
  Scarto_Interquartile = sapply(df[, num_cols], IQR, na.rm = TRUE)
)

num_dispersion

