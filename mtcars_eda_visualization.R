# Load the mtcars dataset
data(mtcars)

# Display the first few rows of the dataset
head(mtcars)

# Summary statistics
summary(mtcars)

# Check for missing values (mtcars dataset does not have missing values)
any(is.na(mtcars))

# Correlation matrix
correlation_matrix <- cor(mtcars)
print(correlation_matrix)

# Pair plot for selected numeric variables
pairs(mtcars[, c("mpg", "hp", "wt", "qsec")], main="Pair Plot of mpg, hp, wt, qsec")

# Load required library for visualization
install.packages("ggplot2")  # Install ggplot2 package if not already installed
library(ggplot2)

# Visualization: Scatter plot of mpg vs. hp
ggplot(mtcars, aes(x=hp, y=mpg)) +
  geom_point(color="blue") +
  labs(title="Scatter Plot of Horsepower vs. Miles Per Gallon (mpg)",
       x="Horsepower", y="Miles Per Gallon")

# Visualization: Box plot of mpg by number of cylinders (cyl)
ggplot(mtcars, aes(x=factor(cyl), y=mpg)) +
  geom_boxplot(fill="skyblue") +
  labs(title="Box Plot of Miles Per Gallon (mpg) by Number of Cylinders",
       x="Number of Cylinders", y="Miles Per Gallon")

