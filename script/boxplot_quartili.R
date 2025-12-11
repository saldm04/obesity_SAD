# Definisci i colori nell’ordine dei livelli di Gender
cols_gender <- c("lightpink", "lightblue")  # adatta se serve

########################
## 1) Boxplot Età
########################
bp_age <- boxplot(Age ~ Gender, data = df,
                  main = "Età per sesso",
                  xlab = "Sesso",
                  ylab = "Età (anni)",
                  col  = cols_gender)

legend("topright",
       legend = levels(df$Gender),
       fill   = cols_gender,
       bty    = "n",
       cex    = 0.8)

# Stampa quartili (e min/max) per Age
quartili_age <- data.frame(
  row.names = c("Min", "Q1", "Mediana", "Q3", "Max"),
  bp_age$stats
)
colnames(quartili_age) <- levels(df$Gender)
cat("\nStatistiche per Age (per sesso):\n")
print(quartili_age)


########################
## 2) Boxplot Altezza
########################
bp_height <- boxplot(Height ~ Gender, data = df,
                     main = "Altezza per sesso",
                     xlab = "Sesso",
                     ylab = "Altezza (m)",
                     col  = cols_gender)

legend("topright",
       legend = levels(df$Gender),
       fill   = cols_gender,
       bty    = "n",
       cex    = 0.8)

# Stampa quartili per Height
quartili_height <- data.frame(
  row.names = c("Min", "Q1", "Mediana", "Q3", "Max"),
  bp_height$stats
)
colnames(quartili_height) <- levels(df$Gender)
cat("\nStatistiche per Height (per sesso):\n")
print(quartili_height)


########################
## 3) Boxplot Peso
########################
bp_weight <- boxplot(Weight ~ Gender, data = df,
                     main = "Peso per sesso",
                     xlab = "Sesso",
                     ylab = "Peso (kg)",
                     col  = cols_gender)

legend("topright",
       legend = levels(df$Gender),
       fill   = cols_gender,
       bty    = "n",
       cex    = 0.8)

# Stampa quartili per Weight
quartili_weight <- data.frame(
  row.names = c("Min", "Q1", "Mediana", "Q3", "Max"),
  bp_weight$stats
)
colnames(quartili_weight) <- levels(df$Gender)
cat("\nStatistiche per Weight (per sesso):\n")
print(quartili_weight)
