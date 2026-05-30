library(readxl)
library(dplyr)
library(ggplot2)

data <- read_excel("C:\\3rd year\\2 semester\\IS 3005\\SpeedyCall Customer Churn Data.xlsx")

names(data)      # Display all column names
str(data)        # See data types and structure

# Count total missing values in the dataset
sum(is.na(data))

# Count missing values in each column
colSums(is.na(data))

# ------------------------------------------------------------
# STEP 6: Remove missing values (if any)
# ------------------------------------------------------------
# If there are missing values, remove those rows
data <- na.omit(data)

# Confirm again that no missing values remain
sum(is.na(data))



# STEP 4: Define corporate / academic color palette
# ------------------------------------------------------------
corp_colors <- c("No" = "#174A7E", "Yes" = "#AEC7E8")  # For Churn categories

# -------------------------------------------------------------------------


# ------------------------------------------------------------
# STEP 5: DEMOGRAPHIC VARIABLES (Bar Charts)
# ------------------------------------------------------------

# Gender vs Churn
ggplot(data, aes(x = gender, fill = Churn)) +
  geom_bar(position = "dodge") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Gender", x = "Gender", y = "Count") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"),
        legend.position = "right",
        axis.text = element_text(color = "#333333"),
        axis.title = element_text(color = "#333333"))


ggplot(data, aes(x = factor(SeniorCitizen), fill = Churn)) +
  geom_bar(position = "dodge") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Senior Citizen Status", 
       x = "Senior Citizen (0 = No, 1 = Yes)", y = "Count") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))




# Partner vs Churn
ggplot(data, aes(x = Partner, fill = Churn)) +
  geom_bar(position = "dodge") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Partner Status", x = "Partner", y = "Count") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))


# Dependents vs Churn
ggplot(data, aes(x = Dependents, fill = Churn)) +
  geom_bar(position = "dodge") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Dependents", x = "Dependents", y = "Count") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))



# Tenure (numeric) boxplot
ggplot(data, aes(x = Churn, y = tenure, fill = Churn)) +
  geom_boxplot() +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Tenure by Churn", x = "Churn", y = "Tenure (months)") +
  theme_minimal(base_size = 14) +
  theme(panel.background = element_rect(fill = "#F9F9F9"),
        panel.grid.major = element_line(color = "#DDDDDD"))



# Contract Type vs Churn
ggplot(data, aes(x = Contract, fill = Churn)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Proportion of Churn by Contract Type", 
       x = "Contract Type", y = "Proportion") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))



# Internet Service
ggplot(data, aes(x = InternetService, fill = Churn)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Internet Service Type", 
       x = "Internet Service", y = "Proportion") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))


# Online Security
ggplot(data, aes(x = OnlineSecurity, fill = Churn)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Online Security Subscription", 
       x = "Online Security", y = "Proportion") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))



# Tech Support
ggplot(data, aes(x = TechSupport, fill = Churn)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Tech Support Subscription", 
       x = "Tech Support", y = "Proportion") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))

# Streaming TV
ggplot(data, aes(x = StreamingTV, fill = Churn)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Churn by Streaming TV Subscription", 
       x = "Streaming TV", y = "Proportion") +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major = element_line(color = "#DDDDDD"),
        panel.background = element_rect(fill = "#F9F9F9"))



ggplot(data, aes(x = Churn, y = MonthlyCharges, fill = Churn)) +
  geom_boxplot(width = 0.6, outlier.color = "#7F7F7F", alpha = 0.9) +
  stat_summary(fun = mean, geom = "point", shape = 23, size = 3, fill = "white", color = "#333333") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Monthly Charges by Customer Churn",
       x = "Churn", y = "Monthly Charges (USD)") +
  theme_minimal(base_size = 14) +
  theme(panel.background = element_rect(fill = "#F9F9F9"),
        panel.grid.major = element_line(color = "#DDDDDD"),
        axis.text = element_text(color = "#333333"))


# STEP 6: Total Charges — Boxplot
# ------------------------------------------------------------
ggplot(data, aes(x = Churn, y = TotalCharges, fill = Churn)) +
  geom_boxplot(width = 0.6, outlier.color = "#7F7F7F", alpha = 0.9) +
  stat_summary(fun = mean, geom = "point", shape = 23, size = 3, fill = "white", color = "#333333") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Total Charges by Customer Churn",
       x = "Churn", y = "Total Charges (USD)") +
  theme_minimal(base_size = 14) +
  theme(panel.background = element_rect(fill = "#F9F9F9"),
        panel.grid.major = element_line(color = "#DDDDDD"),
        axis.text = element_text(color = "#333333"))



# MonthlyCharges density plot
ggplot(data, aes(x = MonthlyCharges, fill = Churn)) +
  geom_density(alpha = 0.5) +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Distribution of Monthly Charges by Churn Status",
       x = "Monthly Charges (USD)", y = "Density") +
  theme_minimal(base_size = 14) +
  theme(panel.background = element_rect(fill = "#F9F9F9"),
        panel.grid.major = element_line(color = "#DDDDDD"))

# TotalCharges density plot
ggplot(data, aes(x = TotalCharges, fill = Churn)) +
  geom_density(alpha = 0.5) +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Distribution of Total Charges by Churn Status",
       x = "Total Charges (USD)", y = "Density") +
  theme_minimal(base_size = 14) +
  theme(panel.background = element_rect(fill = "#F9F9F9"),
        panel.grid.major = element_line(color = "#DDDDDD"))




# STEP 3: Define your corporate color palette
# ------------------------------------------------------------
corp_colors <- c("No" = "#174A7E", "Yes" = "#AEC7E8")

# ------------------------------------------------------------
# STEP 4: Select service-related columns
# ------------------------------------------------------------
# (You can include or remove columns depending on what’s in your dataset)
service_cols <- c("OnlineSecurity", "OnlineBackup", "DeviceProtection",
                  "TechSupport", "StreamingTV", "StreamingMovies")

# ------------------------------------------------------------
# STEP 5: Create a new variable = number of subscribed services
# ------------------------------------------------------------
# Convert "Yes"/"No" to 1/0, then sum across services for each customer
data <- data %>%
  mutate(num_services = rowSums(across(all_of(service_cols), 
                                       ~ ifelse(. == "Yes", 1, 0), 
                                       .names = "srv_{col}")))

# Check the new variable
head(data$num_services)


# STEP 7: Boxplot — Number of Services vs. Churn
# ------------------------------------------------------------
ggplot(data, aes(x = Churn, y = num_services, fill = Churn)) +
  geom_boxplot(width = 0.6, outlier.color = "#7F7F7F", alpha = 0.9) +
  stat_summary(fun = mean, geom = "point", shape = 23, size = 3, 
               fill = "white", color = "#333333") +
  scale_fill_manual(values = corp_colors) +
  labs(title = "Number of Subscribed Services by Churn Status",
       x = "Churn", y = "Number of Subscribed Services (0–6)") +
  theme_minimal(base_size = 14) +
  theme(panel.background = element_rect(fill = "#F9F9F9"),
        panel.grid.major = element_line(color = "#DDDDDD"))


# ------------------------------------------------------------
# STEP 8: Bar Chart — Churn Percentage by Number of Services
# ------------------------------------------------------------

# 1️⃣ Prepare summarized data with percentages
service_summary <- data %>%
  group_by(num_services, Churn) %>%
  summarise(Count = n(), .groups = "drop") %>%
  group_by(num_services) %>%
  mutate(Percent = Count / sum(Count) * 100)

# 2️⃣ Draw the percentage bar chart
ggplot(service_summary, aes(x = factor(num_services), y = Percent, fill = Churn)) +
  geom_col(position = "fill") +
  scale_fill_manual(values = corp_colors) +
  # add percentage labels
  geom_text(aes(label = paste0(round(Percent, 1), "%")),
            position = position_fill(vjust = 0.5),
            color = "#333333", size = 4) +
  labs(title = "Churn Percentage by Number of Subscribed Services",
       x = "Number of Subscribed Services",
       y = "Percentage of Customers") +
  scale_y_continuous(labels = scales::percent) +
  theme_minimal(base_size = 14) +
  theme(
    panel.background = element_rect(fill = "#F9F9F9"),
    panel.grid.major = element_line(color = "#DDDDDD"),
    axis.text = element_text(color = "#333333"),
    axis.title = element_text(color = "#333333"),
    legend.position = "right"
  )




# Summarize PaymentMethod + Churn with percentages
payment_summary <- data %>%
  group_by(PaymentMethod, Churn) %>%
  summarise(Count = n(), .groups = "drop") %>%
  group_by(PaymentMethod) %>%
  mutate(Percent = Count / sum(Count) * 100)

# Plot
ggplot(payment_summary,
       aes(x = PaymentMethod, y = Percent, fill = Churn)) +
  geom_col(position = "fill") +
  scale_fill_manual(values = corp_colors) +
  geom_text(aes(label = paste0(round(Percent, 1), "%")),
            position = position_fill(vjust = 0.5),
            color = "#333333", size = 4) +
  labs(title = "Churn Percentage by Payment Method",
       x = "Payment Method", y = "Percentage of Customers") +
  scale_y_continuous(labels = scales::percent) +
  theme_minimal(base_size = 14) +
  theme(
    panel.background = element_rect(fill = "#F9F9F9"),
    panel.grid.major = element_line(color = "#DDDDDD"),
    axis.text.x = element_text(angle = 20, hjust = 1, color = "#333333"),
    axis.text.y = element_text(color = "#333333"),
    axis.title = element_text(color = "#333333")
  )
