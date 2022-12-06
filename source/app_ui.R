library(shiny)
source("app_server.R")

#------------------------------------------------------------------------------#
#page one content 

page_one <- tabPanel(
"Introduction"                   

)

#------------------------------------------------------------------------------#
# page two content
page_two <- tabPanel(
  "Chart 1",
  titlePanel("Prevalence of Undernourishment by Country from 2001 to 2019"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Country",
                  label = "Select Country/Region",
                  choices = c(data_undernourishment$Country))
    ),
  mainPanel(
    plotOutput("UndernourishmentChart")
  )
 )
)

#------------------------------------------------------------------------------#
#page three content

# page_three <- tabPanel(
#  "Chart 2",
#   titlePanel("test"),
#  
#  sliderInput("slider2", label = h3("Year Range"), min = 1850, 
#              max = 2022, value = c(1850, 2022), sep = "", width = '100%'),
#  
#  selectInput("Location", label = h3("Select Country"),
#              choices = c(data_malnutrition$Country)),
#   
# )


year_range <- range(data_malnutrition$Year)
# print(year_range)

page_three <- tabPanel(
  "Chart 2",
  titlePanel("Underweight Population of Countries"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Country",
                  label = "Select Country",
                  choices = c(data_malnutrition$Country)), 
      sliderInput(inputId = "Year",
                  label = "Select Year Range",
                  min = as.numeric(year_range[1]),
                  max = as.numeric(year_range[2]),
                  value = year_range,
                  sep = "")),
    
    mainPanel(
      plotOutput("UnderweightChart")
  )
))

#------------------------------------------------------------------------------#
#page 4 content 

page_four <- tabPanel(
  "Summary"
)

#------------------------------------------------------------------------------#
#page 5 content 

page_five <- tabPanel(
  "Report",
  h1("Combating World Hunger through Data Analysis"),
  # do we need to include the code name? 
  h5("Info-201: Technical Foundations of Informatics - The Information School - 
     University of Washington - Autumn 2022"),
  
  h5("Asad Jaffery: asadjaf@uw.edu"), 
  h5("Beliz Ozhan: beliz@uw.edu"),  
  h5("Curt Tanaka: ctanakaa@uw.edu"),
  
  h3("Abstract"),
  h5("Prevalence of undernourishment varies from country to country and percentages have been fluctuating 
     over the years, making world hunger a difficult problem to combat. The 
     dataset we have chosen takes into account the percentage of undernourishment
     in over 150 countries from the years 2001 to 2019. Overall, world hunger was 
     decreasing, however, in light of recent economic and agricultural inflation, 
     in many countries percentages have begun to rise again. In our report we are 
     investigating world hunger through data and analysis. Our goal is to identify 
     the problems that are causing worldwide hunger, who is being affected, and what can
     be done in the future. The information we analyze from the data set of worldwide hunger 
     is crucial in combatting this issue."),
  
  h3("Keywords"),
  h5("World Hunger, Education, Hunger Rates by year"),
  
  h3("Introduction"),
  h5("Hunger and undernourishment are some of the leading causes of severe or fatal
     health consequences globally, especially in children. The main issue is lack 
     of access to food resources and a well balanced diet. By 2030, the United 
     Nations set a target to “end hunger” as part of their 
     Sustainable Development goals. Looking at this
     dataset, however, hunger and undernourishment is still a problem around the 
     world, even if percentages have declined. We plan to address the issue of 
     undernourishment, by looking at the trends around the world through this 
     dataset, and to highlight which countries need more support than others in 
     food supply and dietary education. By measuring which populations have the 
     largest percentage of insufficient diets, action can be taken to truly end 
     world hunger."),
  
  h3("Problem Domain"),
  h5("After a steady decline over the last decade, world hunger is again, on the 
     rise. The COVID-19 pandemic has had a brutal effect on the entire world, 
     especially those on the brink of starvation. Unfortunately, world hunger has 
     reached nearly 10 percent since 2019, and the problem seems to only be 
     getting worse as the global rate of inflation is also rising (World Against Hunger).
     Thus, we have decided to pick a data set that studies the rates of hunger in
     176 countries around the world, on a year by year basis in hopes to 
     contribute to the fight against hunger."),
  
  h3("Direct and Indirect Stakeholders"),
  h5("The people who are directly involved with the data (direct stakeholders) 
     are those who are getting an insufficient caloric intake. Since the data set
     we are looking at examines 176 countries, these people can be located in any
     of these countries. Individuals who would be examining this data, or using it
     creating solutions for the issue of world hunger would be considered indirect
     stakeholders."),
  
  h3("Human Values"),
  h5("The idea of attaining access to food being a human right is widely accepted.
     Infact, the 1966 International Covenant on Economic, Social and Cultural 
     Rights 'enshrined’ that idea after the right to food was recognized as a
     right to an adequate standard of living in the 1948 Universal Declaration 
     of Human Rights [(Office of the High Commissioner for Human Rights)](https://www.ohchr.org/sites/default/files/Documents/Publications/FactSheet34en.pdf). 
     Thus, the stance that we are taking, is one of forward progression. Every human 
     has a right to food, and the issue of hunger is one that we, as privileged 
     individuals, are attempting to alleviate. Our human values are intrinsic rights 
     that every human being should have."),
  
  h3("Potential Benifits"),
  h5("Besides the fact that every human has a right to a balanced, and full diet, 
     studying world hunger, and eventually reaching zero hunger, has the potential
     to benefit the entire world in many ways. For instance: education. Studies
     have shown that children with a balanced diet, and a full caloric intake are
     able to be more energetic in the classroom, and perform better in the 
     academic environment (The Borgen Project). 
     This also implies a more efficient world economy, as better education rates 
     result in a more sustainable workforce."),
  
  h3("Our Job"),
  h5("The harms of human starvation start with the moral obligation that we all 
     have. As humans who have full access to technology, education, and food, it 
     is our job to do our part in helping those who were born into less fortunate 
     circumstances. Thus, we have chosen to do our project on hunger rates around 
     the world, since hunger is a prerequisite for many other privileges that we 
     have (see ‘Potential Benefits’)."),
  
  h3("Research Questions"),
  h5("How has hunger and undernourishment progressed on a global scale, what 
  trends have become apparent during the early twenty-first century?"),
  h5("What countries have been hit hardest by the problems of hunger and 
     undernourishment in the first decade of the 2000s and the second decade 
     of the 2000s, is there any relation between the two?"),
  h5("How has the price of common food goods in all countries affected by 
     hunger and undernourishment (defined as a % of population greater than 10%) 
     from the years 2003 to 2020 affected the rates of hunger and 
     undernourishment?"),
  
  # dataset
  
  h3("Expected Implications"),
  h5("Assuming that we find the answer to world hunger, there are many
     implications around it. First off, we must implement the model we have 
     created, starting with the countries with the largest sheer number of 
     individuals who are starving, as from a utilitarian perspective, that 
     would be the most ‘moral’ implementation. Next, we would expect the rate 
     of education to increase, as children can now focus on school (one of the
     next objectives would be to increase education access to those who don’t 
     already have it).  After doing so, the economic implications would start 
     to show, as countries who were struggling with starvation would be able to 
     focus on building that proper infrastructure to support their economy."),
  
  h3("Limitations"),
  h5("- The first limitation to using this dataset is that the data fails to 
     represent all people within a country. Many undernourished people or those 
     struggling with hunger may live in remote areas, where they will be missed 
     by the statisticians. Additionally, not every country across the globe has 
     an accurate way to measure total census, therefore, the percentage of hunger
     (which is based on the main population) may not be accurate. One way to 
     address this limitation is to create a universal system for tracking 
     population changes. This could be one system where every person is entered, 
     that way all data remains true to the times."),
  h5("- Another limitation in trying to solve the problem of world hunger is the 
  disconnect between the data, policies, and actual implementation. Though this 
  data is helpful to support policies that would push for more incentives to 
  improve nourishment, it is very difficult to carry out actions and resources, 
  making them readily accessible for everyone. Just by looking at these statistics
  little can actually be done to end world hunger, however, these statistics are 
  the first steps in highlighting the problem, and thus the first steps in making
  change."),
  
  
  h5("Citations"),
  h5("Sustainable Development Goals: https://sdgs.un.org/goals"),
  h5("Office of the High Commissioner for Human Rights: https://www.actionagainsthunger.org/the-hunger-crisis/world-hunger-facts/"),
  h5("Borgen Projeect: https://borgenproject.org/effects-of-hunger-on-education/"),
  h5()
  
)


#------------------------------------------------------------------------------#
# combine pages

ui <- navbarPage(
  "Combatting World Hunger Through Data Analysis",
  page_one,
  page_two,
  page_three,
  page_four,
  page_five
)

