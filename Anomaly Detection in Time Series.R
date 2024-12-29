# First step install packages
install.packages("tidyverse")
install.packages("anomalize")
install.packages("tibbletime")
install.packages("timetk")
#Call libraries whose packages we have already installed
library(tidyverse)
library(tibbletime)
library(anomalize)
library(timetk)
library(readxl)
# Call a variable and store all the data set in it.
Dataset1 <- read_csv("Desktop/Anomaly Detection/Dataset1.csv") #import a data set CSV file
# View data set which is stored in a new variable.
View(Dataset1)
hist(Dataset1$public_housing,
     xlab = "Public_Housing",
     main = "Histogram of Public Housing",
     breaks = sqrt(nrow(Dataset1))
)
ggplot(Dataset1) +
  aes(x = public_housing) +
  geom_histogram(bins = 30L, fill = "#0c4c8a") +
  theme_minimal()

boxplot(Dataset1$public_housing,
        ylab = "Public_Housing"
)
boxplot.stats(Dataset1$public_housing)$out
out <- boxplot.stats(Dataset1$public_housing)$out
out_ind <- which(Dataset1$public_housing %in% c(out))
out_ind

Dataset1[out_ind, ]


boxplot(Dataset1$public_housing,
        ylab = "Public_Housing",
        main = "Boxplot of Public Housing"
)
mtext(paste("Outliers: ", paste(out, collapse = ", ")))

lower_bound <- quantile(Dataset1$public_housing, 0.025)
lower_bound

upper_bound <- quantile(Dataset1$public_housing, 0.975)
upper_bound

outlier_ind <- which(Dataset1$public_housing < lower_bound | Dataset1$public_housing > upper_bound)
outlier_ind

Dataset1[outlier_ind, "public_housing"]

Dataset1[outlier_ind, ]


# Setting the percentiles to 1 and 99 gives the same potential outliers as with the IQR criterion.

lower_bound <- quantile(Dataset1$public_housing, 0.01)
upper_bound <- quantile(Dataset1$public_housing, 0.99)

outlier_ind <- which(Dataset1$public_housing < lower_bound | Dataset1$public_housing > upper_bound)

Dataset1[outlier_ind, ]

subset(Dataset1, public_housing != 501.6)


iqr <- IQR(Dataset1$public_housing)
up <-  quantile(Dataset1$public_housing, 0.75) + 1.5*iqr # Upper Range  
low<- quantile(Dataset1$public_housing, 0.25) - 1.5*iqr # Lower Range???


eliminated <- subset(Dataset1, Dataset1$public_housing > low & Dataset1$public_housing < up)
eliminated

#Convert the data format 
str(Dataset1)
#Store the data into a new variable
df <- Dataset1
# Change Factor to Date format
df$month <- paste(df$month, "01", sep="-")
# Select only relevant columns in a new data frame
df$month <- as.Date(df$month,format="%Y-%m-%d")#In month column format of Date change
df <- df %>% select(month,overall)
# Convert df to a tibble
df <- as_tibble(df)
class(df)
df_anomalized <- df %>%
  time_decompose(overall, merge = TRUE) %>%
  anomalize(remainder) %>%
  time_recompose()
df_anomalized %>% glimpse()
df_anomalized %>% plot_anomalies(ncol = 3, alpha_dots = 0.75)
plot1 <- df_anomalized %>%
  plot_anomaly_decomposition() +
  ggtitle("Freq/Trend = 'auto'")
plot1


