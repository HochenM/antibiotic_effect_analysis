# ============================
# Antibiotic Effect Comparison
# ============================

# Goal: Compare two antibiotics (Drug A and Drug B)
# based on the inhibition zone (in mm) against bacterial growth.

# Load necessary package (built-in datasets, but not strictly required here)
library(datasets)

# Simulated inhibition zone data for two antibiotic groups
drugA <- c(18.1, 19.5, 17.8, 20.2, 18.7, 19.1, 17.6, 20.5, 18.4, 19.8)
drugB <- c(15.4, 16.1, 15.9, 14.7, 15.2, 16.8, 15.0, 16.3, 15.6, 14.9)

# 1. Visual comparison using histograms
par(mfrow = c(1,2))  # two plots side by side
hist(drugA, col = "skyblue", main = "Drug A", xlab = "Inhibition Zone (mm)")
hist(drugB, col = "orange", main = "Drug B", xlab = "Inhibition Zone (mm)")

# 2. Normality check (Shapiro-Wilk Test)
cat("Normality Test:\n")
print(shapiro.test(drugA))  # W ~ 0.95+, p > 0.05 → normal
print(shapiro.test(drugB))

# 3. Variance comparison (F-test)
cat("\nF-test for Equal Variances:\n")
print(var.test(drugA, drugB))  # p > 0.05 → equal variances assumed

# 4. Independent two-sample t-test
cat("\nT-test:\n")
print(t.test(drugA, drugB, var.equal = TRUE))  # p < 0.05 → significant difference

# 5. (Optional) Non-parametric test if normality fails
cat("\nWilcoxon Test (Non-parametric):\n")
print(wilcox.test(drugA, drugB))  # use only if data not normal

# 6. Boxplot comparison
par(mfrow = c(1,1))  # reset plot layout
boxplot(drugA, drugB,
        names = c("Drug A", "Drug B"),
        col = c("lightblue", "salmon"),
        main = "Antibiotic Comparison",
        ylab = "Inhibition Zone (mm)")
