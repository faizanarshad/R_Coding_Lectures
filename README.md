# R Coding Lectures

A comprehensive collection of R programming tutorials, statistical analyses, and data visualization examples for learning and teaching purposes.

## 📚 Overview

This repository contains a series of R scripts covering fundamental to advanced topics in data analysis, statistical modeling, and visualization. The materials are designed for educational purposes and include practical examples using both built-in and custom datasets.

## 🎯 Topics Covered

### 📊 Data Visualization
- **Basic Plots**: Bar plots, box plots, histograms, scatter plots, line plots
- **Advanced Visualizations**: Violin plots, bubble plots, heatmaps, PCA plots
- **ggplot2 Mastery**: Comprehensive examples using the ggplot2 package
- **Custom Themes**: Styling and theming for professional presentations

### 📈 Statistical Analysis
- **Descriptive Statistics**: Mean, median, standard deviation calculations
- **Analysis of Variance (ANOVA)**: One-way and multiple mean ANOVA
- **Post-hoc Tests**: Tukey tests and other multiple comparison procedures
- **Correlation Analysis**: Pearson and Spearman correlations with visualization

### 🔍 Advanced Analytics
- **Principal Component Analysis (PCA)**: Dimensionality reduction and grouping
- **Anomaly Detection**: Time series analysis and outlier detection
- **Data Wrangling**: Data cleaning, transformation, and manipulation

### 🛠️ Data Manipulation
- **Tidyverse**: dplyr, tidyr, and related packages
- **Data Import/Export**: CSV, Excel file handling
- **Vector Operations**: Basic R programming concepts

## 📁 File Structure

### Core R Scripts
- `Hello_world.R` - Introduction to R basics and package installation
- `Vectors_in_R.R` - Vector operations and data structures
- `Sequence_and_Repeate.R` - Sequence generation and repetition functions

### Visualization Scripts
- `ggplot_1.R` - Comprehensive ggplot2 examples
- `ggplot_using_builtin_dataset.R` - Built-in dataset visualizations
- `Bar_Plot.R`, `Bar_Graph1.R` - Bar chart examples
- `Boxplot.R`, `Box_Plot2.R` - Box plot variations
- `Scatter_Plot1.R`, `Scatter_Plot2.R` - Scatter plot examples
- `Histogram.R` - Histogram creation
- `Line_Plot.R` - Line chart examples
- `Pie_Chart.R` - Pie chart creation
- `violin_plot.R` - Violin plot examples
- `bubble_scatter_jitter_plot.R` - Advanced scatter plots
- `Heatmap.R` - Heatmap creation
- `ggtheme.R` - Custom ggplot2 themes

### Statistical Analysis Scripts
- `Mean_sd_median_nova.R` - Descriptive statistics and ANOVA
- `Multiple_mean_anova.R` - Multiple group ANOVA
- `Post_hoc_Test.R` - Post-hoc analysis
- `corr_in_R.R` - Correlation analysis
- `PCA.R` - Principal Component Analysis
- `Anomaly Detection in Time Series.R` - Time series anomaly detection

### Data Processing Scripts
- `Data_wrangling.R` - Data cleaning and manipulation
- `tidyvarse.R` - Tidyverse package examples

### Plant and Biology Analysis
- `Plants_data_with_graph.R` - Plant data analysis with visualizations
- `Gussian.R` - Gaussian distribution examples

## 📊 Datasets Included

- `iris` (built-in R dataset) - Classic dataset for classification
- `Dataset1.csv` - Time series data for anomaly detection
- `best cities for a workation.csv` - City ranking data
- `Height of Male and Female by Country 2022.csv` - Demographic data
- `trains vs planes.csv` - Transportation comparison data
- `mydata.xlsx` - Excel dataset for analysis

## 🖼️ Output Files

The repository includes various output formats:
- **Images**: `.tiff`, `.jpeg`, `.png` files for high-quality plots
- **Documents**: `.pdf` files for publication-ready graphics
- **Tables**: `.csv` files for processed data

## 🚀 Getting Started

### Prerequisites
- R (version 3.5 or higher recommended)
- RStudio (optional but recommended)

### Installation
1. Clone or download this repository
2. Open R or RStudio
3. Install required packages (most scripts include installation commands)
4. Run scripts in order of complexity

### Required Packages
```r
# Core packages
install.packages(c("ggplot2", "dplyr", "tidyr", "readxl"))

# Statistical analysis
install.packages(c("car", "agricolae", "factoextra", "FactoMineR"))

# Time series analysis
install.packages(c("anomalize", "tibbletime", "timetk"))

# Data visualization
install.packages(c("corrplot", "RColorBrewer"))
```

## 📖 Usage Examples

### Basic Plot Creation
```r
# Load required libraries
library(ggplot2)

# Create a simple scatter plot
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Iris Dataset", x = "Sepal Length", y = "Sepal Width")
```

### Statistical Analysis
```r
# Perform one-way ANOVA
result <- aov(Sepal.Length ~ Species, data = iris)
summary(result)

# Post-hoc test
TukeyHSD(result)
```

## 🎓 Learning Path

1. **Beginner**: Start with `Hello_world.R` and `Vectors_in_R.R`
2. **Basic Visualization**: Progress through `Bar_Plot.R`, `Scatter_Plot1.R`
3. **Advanced Visualization**: Study `ggplot_1.R` and `ggtheme.R`
4. **Statistics**: Learn from `Mean_sd_median_nova.R` and `Post_hoc_Test.R`
5. **Advanced Topics**: Explore `PCA.R` and `Anomaly Detection in Time Series.R`

## 🤝 Contributing

Feel free to contribute by:
- Adding new analysis examples
- Improving existing code
- Adding more comprehensive documentation
- Suggesting new topics or datasets

## 📄 License

This project is intended for educational purposes. Please ensure proper attribution when using these materials in academic or professional settings.

## 📞 Contact

For questions or suggestions regarding these R coding lectures, please open an issue in the repository.

---

**Note**: This repository serves as a comprehensive learning resource for R programming, statistical analysis, and data visualization. Each script is self-contained and includes comments to facilitate understanding.
