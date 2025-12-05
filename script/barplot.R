# Funzione di comodo per barplot con frequenze sulle barre
plot_bar_with_freq <- function(x, main, xlab) {
  freq <- table(x)
  bp <- barplot(freq,
                main = main,
                xlab = xlab,
                ylab = "Frequenza",
                col  = "lightgrey")
  text(x = bp,
       y = freq,
       labels = as.numeric(freq),
       pos = 1,
       cex = 0.8)
}

# FCVC
df$FCVC_label <- factor(df$FCVC,
                        levels = c(1, 2, 3),
                        labels = c("Never", "Sometimes", "Always"),
                        ordered = TRUE)

plot_bar_with_freq(df$FCVC_label,
                   main = "FCVC",
                   xlab = "Verdure consumate durante i pasti")

# NCP
df$NCP_label <- factor(df$NCP,
                       levels = c(1, 2, 3, 4),
                       labels = c("One", "Two", "Three", "More than three"),
                       ordered = TRUE)

plot_bar_with_freq(df$NCP_label,
                   main = "NCP",
                   xlab = "Numero di pasti principali giornalieri")

# CH2O
df$CH2O_label <- factor(df$CH2O,
                        levels = c(1, 2, 3),
                        labels = c("Less than a liter", "Between 1 and 2L", "More than 2L"),
                        ordered = TRUE)

plot_bar_with_freq(df$CH2O_label,
                   main = "CH2O",
                   xlab = "Quantità d’acqua consumata quotidianamente")

# FAF
df$FAF_label <- factor(df$FAF,
                       levels = c(0, 1, 2, 3),
                       labels = c("I do not have", "1 or 2 days", "2 or 4 days", "4 or 5 days"),
                       ordered = TRUE)

plot_bar_with_freq(df$FAF_label,
                   main = "FAF",
                   xlab = "Frequenza dell’attività fisica settimanale")

# TUE
df$TUE_label <- factor(df$TUE,
                       levels = c(0, 1, 2),
                       labels = c("0-2 hours", "3-5 hours", "More than 5 hours"),
                       ordered = TRUE)

plot_bar_with_freq(df$TUE_label,
                   main = "TUE",
                   xlab = "Tempo di utilizzo quotidiano di dispositivi tecnologici")

#Gender
plot_bar_with_freq(df$Gender, main = "Gender", xlab="Sesso")

#family_history_with_overweight
plot_bar_with_freq(df$family_history_with_overweight, main = "family_history_with_overweight", xlab="Presenza di casi di sovrappeso in famiglia")

#FAVC
plot_bar_with_freq(df$FAVC, main = "FAVC", xlab="Consumo frequente di cibi ad alto contenuto calorico")

#CAEC
plot_bar_with_freq(df$CAEC, main = "CAEC", xlab="Consumo di cibo tra un pasto e l’altro")

#SMOKE
plot_bar_with_freq(df$SMOKE, main = "SMOKE", xlab="Abitudine al fumo")

#SCC
plot_bar_with_freq(df$SCC, main = "SCC", xlab="Monitoraggio dell’assunzione calorica giornaliera")

#CALC
plot_bar_with_freq(df$CALC, main = "CALC", xlab="Frequenza del consumo di alcolici")

#MTRANS
plot_bar_with_freq(df$MTRANS, main = "MTRANS", xlab="Mezzo di trasporto maggiormente utilizzato")

#target
plot_bar_with_freq(df$target, main = "target", xlab="Variabile target")

