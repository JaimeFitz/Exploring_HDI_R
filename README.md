# Exploring_HDI_R
An exploration of the United Nations Human Development Index using R

In my first table analysis for the Human Development Index database, I will be analyzing the Gender Development Index table. This table includes information on the disparities between males and females in different countries, including education, life expectancy, and overall human development index (HDI). 

My first step included cleaning the data and eliminating countries with missing data. This is crucial to note, some of my findings may be skewed because some developing countries did not provide results. After the data was cleaned, I imported a package into R to allow me to read from my Excel file. 

In my analysis of this table, I will seek to answer the following questions:
  1. Who tends to receive more years of education worldwide? Males or females?
  2. Who tends to have a higher gross national income per capita worldwide? Males or females?
  3. Are years of education and life expectancy correlated? Is this correlation similar for males and females?
  4. Are years of education and gross national income per capita correlated? Is this correlation similar for males and females?

The UN defines the Human Development Index (HDI) as, "A composite index measuring average achievement in three basic dimensions of human development—a long and healthy life, knowledge and a decent standard of living." (UN, 2022). Because life expectancy, gross national income, and mean years of education are used to calculate a country's HDI, it was important for me to carefully refine my investigative questions. For example, if I asked "Do countries with higher HDI's tend to have better education for females?", this would be a circular and redundant question. 

For my first question, "Who tends to receive more years of education worldwide? Males or females?" I used ggplot2 to create a scatterplot with expected years of education for females on the y axis and males on the x. This gives me an idea of the correlation, and with the line of best fit drawn, we can start to glean some insights about the difference in expected years of education between the genders. 

<code><img height="400" src="https://user-images.githubusercontent.com/106002818/174414449-70355c49-fd9f-4733-a1dc-e1f93522ac40.jpg"></code>


I repeated this process, creating a basic visualization for each question I'm looking to answer. This gives an overview of the data in a way that's easy to understand. 

My basic visualizations gave me an idea of what to expect, my next step was to go deeper into the data using correlation testing. I chose to use Pearson's correlation coefficient as my method because 4 of my 6 graphs appear to have a roughly linear relationship between the variables. I may choose to use a different correlation coefficient in the future for the education and gross national income relationships, as these two graphs did not seem to yield a very linear relationship. However, I think the correlation between those variables might just be a weak one and that's why it appears non-linear. I'll explore this more in the future. 

Pearson's correlation coefficient yields data about the strength and direction of a correlation, reported as a value ranging between -1 and 1. A value of 1 would indicate a perfect positive relationship, a linear relationship with a slope of 1. A value of -1 indicates a perfect negative relationship. A value of 0 would indicate no correlation between the variables. 

Based on my graphs, I'm expecting all of my correlation coefficients to be positive. I further hypothesize that the two strongest correlations will be found in the relationships between education by gender and estimated gross national income per capita (the purple and red graphs, respectively). 

I will be using the r function cor.test() for this correlation test, because unlike cor(), it provides both the correlation coefficient and the level of the significance for the relationship. 

