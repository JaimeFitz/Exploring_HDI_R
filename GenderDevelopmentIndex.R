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

ggplot(data=HDI_data, aes(x=ExpYearsEduMale19, y=ExpYearsEduFem19)) +
      geom_point()+
	geom_smooth(method=lm, se=FALSE, color = "purple")+
labs(title="Comparison of Education by Gender",
       x="Expected Years of Education \n (Males)", y = "Expected Years of Education \n (Females)")+
theme_classic()

#Plotting female years of education against male years of education

ggplot(data = HDI_data, aes(x = EstGNIPerCapMale19, y = EstGNIPerCapFem19)) + 
geom_point()+
geom_smooth(method=lm, se=FALSE, color = "red")+
labs(title="Comparison of GNI by Gender",
       x="Estimated GNI \n Per Capita (Males)", y = "Estimated GNI \n Per Capita (Females)")+
theme_classic()

#Plotting estimated GNI for females against estimated GNI for males

ggplot(data=HDI_data, aes(x=LifeExpFem19, y=ExpYearsEduFem19)) +
      geom_point()+
	geom_smooth(method=lm, se=FALSE, color = "green")+
labs(title="Comparison of Education and Life Expectancy (Females)",
       x="Life Expectancy \n (Females)", y = "Expected Years of Education \n (Females)")+
theme_classic()

#Plotting life expectancy and education for females

ggplot(data=HDI_data, aes(x=LifeExpMale19, y=ExpYearsEduMale19)) +
      geom_point()+
	geom_smooth(method=lm, se=FALSE, color = "yellow")+
labs(title= "Comparison of Education and Life Expectancy (Males)",
       x="Life Expectancy \n (Males)", y = "Expected Years of Education \n (Males)")+
theme_classic()

#Plotting life expectancy and education for males

ggplot(data=HDI_data, aes(x=ExpYearsEduFem19, y=EstGNIPerCapFem19)) +
      geom_point()+
	geom_smooth(method=lm, se=FALSE, color = "blue")+
labs(title= "Comparison of Gross National Income and Expected Years of Education (Females)",
       x="Expected Years of Education \n (Females)", y = "Estimated Gross National Income \n (Females)")+
theme_classic()

#Plotting female estimated GNI against expected years of education

ggplot(data=HDI_data, aes(x=ExpYearsEduMale19, y= EstGNIPerCapMale19)) +
      geom_point()+
	geom_smooth(method=lm, se=FALSE, color = "orange")+
labs(title= "Comparison of Gross National Income and Expected Years of Education (Males)",
       x="Expected Years of Education \n (Males)", y = "Estimated Gross National Income \n (Males)")+
theme_classic()


#Plotting male estimated GNI against expected years of education

#######################Basic graphics#########################

cor.test(HDI_data$ExpYearsEduMale19, HDI_data$ExpYearsEduFem19, method = "pearson")
#Testing the correlation between male expected years of education and female expected years of education
#cor.test will return the correlation coefficient as well as the p-value (significance)

cor.test(HDI_data$EstGNIPerCapMale19, HDI_data$EstGNIPerCapFem19, method = "pearson")
#Testing the correlation between male estimated GNI per capita and female estimated GNI per capita

cor.test(HDI_data$LifeExpFem19, HDI_data$ExpYearsEduFem19, method = "pearson")
#Testing the correlation between female life expectancy and expected years of education

cor.test(HDI_data$LifeExpMale19, HDI_data$ExpYearsEduMale19, method = "pearson")
#Testing the correlation between male life expectancy and expected years of education

cor.test(HDI_data$ExpYearsEduMale19, HDI_data$EstGNIPerCapMale19, method = "pearson")
#Testing the correlation between expected years of education for males and estimated GNI per capita

cor.test(HDI_data$ExpYearsEduFem19, HDI_data$EstGNIPerCapFem19, method = "pearson")
#Testing the correlation between expected years of education for females and estimated GNI per capita

###########Calculating Correlations###########################

# Clear console
cat("\014") 
# ctrl+L