# 🧬 Antibiotic Effectiveness Analysis

This project analyzes the **effectiveness of two antibiotics** by comparing the **inhibition zones** (in millimeters) they create against bacterial growth.

## 📊 Objective

To statistically test if there is a **significant difference** between the two drugs using:

- Shapiro-Wilk Normality Test
- F-test for variance equality
- Two-sample t-test
- Wilcoxon Rank-Sum Test (as a non-parametric alternative)
- Boxplots and histograms for visualization

## 🧪 Data

Simulated sample data (in mm):

- **Drug A:**  
  `[18.1, 19.5, 17.8, 20.2, 18.7, 19.1, 17.6, 20.5, 18.4, 19.8]`

- **Drug B:**  
  `[15.4, 16.1, 15.9, 14.7, 15.2, 16.8, 15.0, 16.3, 15.6, 14.9]`

## 🧠 Result Interpretation

- Both datasets pass the **normality test**
- **Equal variances** confirmed via F-test
- **t-test** shows significant difference (p < 0.05), meaning:
  ✅ Drug A is statistically more effective than Drug B

## 📂 Files

- `antibiotic_effect_analysis.R` → Main analysis script
- `README.md` → This documentation

## 👩‍🔬 Use Case

Useful for:
- Microbiology experiments
- Antibiotic screening projects
- Bioinformatics and Biostatistics teaching
