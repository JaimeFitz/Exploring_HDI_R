#Install readxl package
install.packages("readxl")
install.packages("tidyverse")


#############Install packages#################################

#load readxl
library("readxl")
library(ggplot2)

#############Load packages####################################

#xls file
HDI_data <- read_excel(file.choose())

head(HDI_data)

##########################Load the data#########################
summary(HDI_data$HDIFem19)
summary(HDI_data$HDIMale19)
#summary of human development indexes for females and males

summary(HDI_data$ExpYearsEduFem19)
summary(HDI_data$ExpYearsEduMale19)
#summary of education for females and males

summary(HDI_data)

########################Preliminary data summary###############



#######################Basic graphics#########################

# Clear console
cat("\014") 
# ctrl+L