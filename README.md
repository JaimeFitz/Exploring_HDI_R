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

<code><img height="400" src="https://user-images.githubusercontent.com/106002818/171301063-d5115035-6c5e-4698-99d2-6573150ab168.png"></code>
<code><img height="400" src="https://user-images.githubusercontent.com/106002818/171300705-be329d45-fc8a-4190-a598-50b0fbae5898.png"></code>
<code><img height="400" src="https://user-images.githubusercontent.com/106002818/171300840-6e22cdc4-0bdb-475b-a3a1-03273e5d2a1f.png"></code>
<code><img height="400" src="https://user-images.githubusercontent.com/106002818/171300757-b22442d2-4f64-4eed-bdbb-aa60832382a3.png"></code>
<code><img height="400" src="https://user-images.githubusercontent.com/106002818/171300755-d8a6007f-787a-4680-a7bb-ceb37e364919.png"></code>
<code><img height="400" src="https://user-images.githubusercontent.com/106002818/171300958-d88d7f8e-f575-4d1b-a854-08927e6306d4.png"></code>

I repeated this process, creating a basic visualization for each question I'm looking to answer. This gives an overview of the data in a way that's easy to understand. 
