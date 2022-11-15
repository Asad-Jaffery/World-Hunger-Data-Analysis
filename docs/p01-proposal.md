# Combating World Hunger through Data Analysis: Project Proposal
## Project 'Double H'
### Authors:

Asad Jaffery: asadjaf@uw.edu\
Beliz Ozhan: beliz@uw.edu\
Curt Tanaka: ctanakaa@uw.edu

## Affiliation
Info-201: Technical Foundations of Informatics - The Information School - University of Washington

## Date
Autumn 2022

## Abstract
Prevalence of undernourishment varies from country to country and percentages have been fluctuating over the years, making world hunger a difficult problem to combat. The dataset we have chosen takes into account the percentage of undernourishment in over 150 countries from the years 2001 to 2019. Overall, world hunger was decreasing, however, in light of recent economic and agricultural inflation, in many countries percentages have begun to rise again. In our report we are investigating world hunger through data and analysis. Our goal is to identify the problems that are causing worldwide hunger, who is being affected, and what can be done in the future. The information we analyze from the data set of worldwide hunger is crucial in combatting this issue.


## Keywords
World Hunger, Education, Hunger Rates by year


## Introduction
Hunger and undernourishment are some of the leading causes of severe or fatal health consequences globally, especially in children. The main issue is lack of access to food resources and a well balanced diet. By 2030, the United Nations set a target to “end hunger” as part of their [Sustainable Development](https://sdgs.un.org/goals) goals. Looking at this dataset, however, hunger and undernourishment is still a problem around the world, even if percentages have declined. We plan to address the issue of undernourishment, by looking at the trends around the world through this dataset, and to highlight which countries need more support than others in food supply and dietary education. By measuring which populations have the largest percentage of insufficient diets, action can be taken to truly end world hunger.

## Problem Domain
After a steady decline over the last decade, world hunger is again, on the rise. The COVID-19 pandemic has had a brutal effect on the entire world, especially those on the brink of starvation. Unfortunately, world hunger has reached nearly 10 percent since 2019, and the problem seems to only be getting worse as the global rate of inflation is also rising [(World Against Hunger)](https://www.actionagainsthunger.org/the-hunger-crisis/world-hunger-facts/). Thus, we have decided to pick a data set that studies the rates of hunger in 176 countries around the world, on a year by year basis in hopes to contribute to the fight against hunger.

#### Direct and Indirect Stakeholders
The people who are directly involved with the data (direct stakeholders) are those who are getting an insufficient caloric intake. Since the data set we are looking at examines 176 countries, these people can be located in any of these countries. Individuals who would be examining this data, or using it creating solutions for the issue of world hunger would be considered indirect stakeholders.

#### Human Values
The idea of attaining access to food being a human right is widely accepted. Infact, the 1966 International Covenant on Economic, Social and Cultural Rights 'enshrined’ that idea after the right to food was recognized as a right to an adequate standard of living in the 1948 Universal Declaration of Human Rights [(Office of the High Commissioner for Human Rights)](https://www.ohchr.org/sites/default/files/Documents/Publications/FactSheet34en.pdf). Thus, the stance that we are taking, is one of forward progression. Every human has a right to food, and the issue of hunger is one that we, as privileged individuals, are attempting to alleviate. Our human values are intrinsic rights that every human being should have.

#### Potential Benefits
Besides the fact that every human has a right to a balanced, and full diet, studying world hunger, and eventually reaching zero hunger, has the potential to benefit the entire world in many ways. For instance: education. Studies have shown that children with a balanced diet, and a full caloric intake are able to be more energetic in the classroom, and perform better in the academic environment [(The Borgen Project)](https://borgenproject.org/effects-of-hunger-on-education/). This also implies a more efficient world economy, as better education rates result in a more sustainable workforce.

#### Our job
The harms of human starvation start with the moral obligation that we all have. As humans who have full access to technology, education, and food, it is our job to do our part in helping those who were born into less fortunate circumstances. Thus, we have chosen to do our project on hunger rates around the world, since hunger is a prerequisite for many other privileges that we have (see ‘Potential Benefits’).

## Research Questions

How has hunger and undernourishment progressed on a global scale, what trends have become apparent during the early twenty-first century?

What countries have been hit hardest by the problems of hunger and undernourishment in the first decade of the 2000s and the second decade of the 2000s, is there any relation between the two?

How has the price of common food goods in all countries affected by hunger and undernourishment(defined as a % of population greater than 10%) from the years 2003 to 2020 affected the rates of hunger and undernourishment?

## The Dataset(See data Directory)

|Data File Name |Purpose |Number of Observations |Number of Variables| Citation|
|---------------| -----------------|-----------------|-----------------|-----------------|
|[prevalence-of-undernourishment.csv](./prevalence-of-undernourishment.csv) | Measures the percentage of population which has an insufficient amount of caloric intake to meet the minimum requirement for energy needs for any given population.| 3344 Unique observations | 4 variables| Roser, Max. Ritchie, Hannah. _Hunger and Undernourishment_. 2019 https://www.kaggle.com/datasets/whenamancodes/hunger-and-undernourishment-data | [country-wide-average.csv](./country-wide-average.csv)| Shows the malnutrition rates by giving the 4 values of broad types of malnutrition, wasting, stunting, underweight, and overweight.| 152 Observations | 8 Variables | UNICEF 2020 https://www.kaggle.com/datasets/ruchi798/malnutrition-across-the-globe | [global-hunger-index](./global-hunger-index.csv)| Presents the hunger index value for countries across the globe | 128 Observations | 5 Variables | Roser, Max. Hannah Ritchie _Hunger and Undernourishment_. 2019 pulbic online at OurWorldInData.org. https://www.kaggle.com/datasets/whenamancodes/the-global-hunger-index |


[prevalence-of-undernourishment.csv](./prevalence-of-undernourishment.csv) allows us to easily determine the countries which are most greatly affected by hunger. To go along with this, this set of data provides nearly two decades of tracking which allows us to look for trends on both a global and country scale. Dataset Originally publish online at OurWorldInData.org by Max Roser and Hannah Ritchie in 2019 in the article _Hunger and Undernourishment_. By combining data from FAO, IFAD, UNICEF, WFP and WHO to create the data set above. Collected from Unicef.

[country-wide-average.csv](./country-wide-average.csv) gives us specific and necessary information on the different facets of malnutrition which are all very important for our analysis. Thanks to the manner in which the data is presented we can analyze the countries based on income levels and other factors which our other data sets do not provide.

[global-hunger-index](./global-hunger-index.csv) The global hunger index offers us a unique way in which to analyze the level of malnutrition in countries in the dataset. The high level overview offers us very useful information on  the countries. Dataset Originally publish online at OurWorldInData.org by Max Roser and Hannah Ritchie in 2019 in the article _Hunger and Undernourishment_. By combining data from FAO, IFAD, UNICEF, WFP and WHO to create the data set above.

## Expected Implications

Assuming that we find the answer to world hunger, there are many implications around it. First off, we must implement the model we have created, starting with the countries with the largest sheer number of individuals who are starving, as from a utilitarian perspective, that would be the most ‘moral’ implementation. Next, we would expect the rate of education to increase, as children can now focus on school (one of the next objectives would be to increase education access to those who don’t already have it).  After doing so, the economic implications would start to show, as countries who were struggling with starvation would be able to focus on building that proper infrastructure to support their economy.


## Limitations

- The first limitation to using this dataset is that the data fails to represent all people within a country. Many undernourished people or those struggling with hunger may live in remote areas, where they will be missed by the statisticians. Additionally, not every country across the globe has an accurate way to measure total census, therefore, the percentage of hunger (which is based on the main population) may not be accurate. One way to address this limitation is to create a universal system for tracking population changes. This could be one system where every person is entered, that way all data remains true to the times.

- Another limitation in trying to solve the problem of world hunger is the disconnect between the data, policies, and actual implementation. Though this data is helpful to support policies that would push for more incentives to improve nourishment, it is very difficult to carry out actions and resources, making them readily accessible for everyone. Just by looking at these statistics little can actually be done to end world hunger, however, these statistics are the first steps in highlighting the problem, and thus the first steps in making change.
