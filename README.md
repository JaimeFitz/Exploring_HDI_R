# Exploring_HDI_R
An exploration of the United Nations Human Development Index using R

In my first table analysis for the Human Development Index database, I will be analyzing the Gender Development Index table. This table includes information on the disparities between males and females in different countries, including education, life expectancy, and overall human development index (HDI). 

My first step included cleaning the data and eliminating countries with missing data. This is crucial to note, some of my findings may be skewed because some developing countries did not provide results. After the data was cleaned, I imported a package into R to allow me to read from my Excel file. 

In my analysis of this table, I will seek to answer the following questions:
  1. Who tends to receive more years of education worldwide? Males or females?
  2. Who tends to have a higher gross national income per capita worldwide? Males or females?
  3. How are years of education and life expectancy correlated? Is this correlation similar for males and females?
  4. Are years of education and gross national income per capita correlated? Is this correlation similar for males and females?

The UN defines the Human Development Index (HDI) as, "A composite index measuring average achievement in three basic dimensions of human development—a long and healthy life, knowledge and a decent standard of living." (UN, 2022). Because life expectancy, gross national income, and mean years of education are used to calculate a country's HDI, it was important for me to carefully refine my investigative questions. For example, if I asked "Do countries with higher HDI's tend to have better education for females?", this would be a circular and redundant question. 

For my first question, "Who tends to receive more years of education worldwide? Males or females?" I used ggplot2 to create a scatterplot with expected years of education for females on the y axis and males on the x. This gives me an idea of the correlation, and with the line of best fit drawn, we can start to glean some insights about the difference in expected years of education between the genders. 

<code><img height="150" src="https://user-images.githubusercontent.com/106002818/170892866-24dd9c66-2353-48a7-8036-6e85b11f01af.png"></code>


