library(readxl)


df <- read_excel(
  "dataset/dataset_obesità_progetto.xlsx",
  col_types = c(
    "text",    # Gender
    "numeric", # Age
    "numeric", # Height
    "numeric", # Weight
    "text",    # family_history_with_overweight
    "text",    # FAVC
    "numeric", # FCVC
    "numeric", # NCP
    "text",    # CAEC
    "text",    # SMOKE
    "numeric", # CH2O
    "text",    # SCC
    "numeric", # FAF
    "numeric", # TUE
    "text",    # CALC
    "text",    # MTRANS
    "numeric"  # target (0/1)
  )
)

df$Gender  <- factor(df$Gender)
df$family_history_with_overweight <- factor(df$family_history_with_overweight)
df$FAVC    <- factor(df$FAVC)
df$CAEC    <- factor(df$CAEC)
df$SMOKE   <- factor(df$SMOKE)
df$SCC     <- factor(df$SCC)
df$CALC    <- factor(df$CALC,
                     levels = c("no","Sometimes","Frequently","Always"),
                     ordered = TRUE)
df$MTRANS  <- factor(df$MTRANS)
df$target  <- factor(df$target)


num_cols <- sapply(df, is.numeric)
cols_to_round <- names(df)[num_cols]
cols_to_round <- setdiff(cols_to_round, c("Weight", "Height"))
df[cols_to_round] <- lapply(df[cols_to_round], round)

colSums(is.na(df))
any(is.na(df))

# Sotto-dataframe per target = 0
df_0 <- df[df$target == "0", ]

# Sotto-dataframe per target = 1
df_1 <- df[df$target == "1", ]