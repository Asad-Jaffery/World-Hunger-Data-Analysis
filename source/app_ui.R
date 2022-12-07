library(shiny)
source("app_server.R")

#------------------------------------------------------------------------------#
#page one content 

page_one <- tabPanel(
  
  "Introduction",
  titlePanel("Introduction"),
  
  sidebarPanel(
    h3("Research Questions"),
    p("What ?"),
    p(" "),
    
    p("What ?"),
    p("  "),
    
    p("What ?"),
  ),
  
  mainPanel(
    h3("Content Description"),
    p("To study world hunger, we decided to use various datasets in order to represent 
      the varying severity of world hunger around the globe, and highlight areas
      where most efforts to combat world hunger must be placed. "),
    
    p("Our first dataset, the", strong("Prevalence of Undernourishment"),"allows
      us to easily determine the countries which are most greatly affected by hunger.
      The prevalence of undernourishment is calculated based on the percentage of 
      population that is undernourished from the total population of that country. 
      This set of data provides nearly two decades of tracking which allows us 
      to look for trends on both a global and country scale.
      The dataset was originally published online at", em("OurWorldInData.org"), " by
      Max Roser and Hannah Ritchie in 2019 in the article, ", em("Hunger and Undernourishment"),
      "and combines data from various organizations such as FAO, IFAD, UNICEF, WFP and WHO."),
    
    p("Our second dataset, the", strong("Country Wide Averages"), ", gives us specific
      and necessary information on the different facets of malnutrition 
      which are all very important for our analysis. Thanks to the manner 
      in which the data is presented we can analyze the countries based on income 
      levels and other factors which our other data sets do not provide. 
      For our analysis, we focused on the “underweight” category as it most closely 
      relates to seeing the trends in world hunger. This value is calculated from 
      the total population of said country, and presented as a percentage."),
    
    img(
      src = "https://media.istockphoto.com/id/895972780/vector/stop-hunger-illustration.jpg?s=612x612&w=0&k=20&c=bD4hMHey2xo7syyEny3ADg0F8p3p8XQijOYykEgUnYk="
    ),
  )
)


#------------------------------------------------------------------------------#
# page two content
page_two <- tabPanel(
  "Chart 1",
  titlePanel("Prevalence of Undernourishment by Country"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Country",
                  label = "Select Country/Region",
                  choices = c(data_undernourishment$Country))
    ),
  mainPanel(
    plotOutput("UndernourishmentChart"),
    p(" "),
    p("This chart depicts the prevalence of undernourishment by country and by year.
      This percentage is based on the total population of each country by year, 
      respectively. Through trends in the dataset we can see that for many countries
      the total prevalence of undernourishment is decreasing, but still continues to 
      be a pressing problem for developing or third world countries. It is important
      to track the prevalence of undernourishment both by year and country to 
      accurately understand the problem of hunger across the world. 
      For this chart, only one country is graphed at a time, and can be changed
      in order to not overwhelm user experience, but still depict a meaningful trend.")
  )
 )
)

#------------------------------------------------------------------------------#
#page three content

year_range <- range(data_malnutrition$Year)
# print(year_range)

page_three <- tabPanel(
  "Chart 2",
  titlePanel("Undernourishment of Countries"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "country",
                  label = "Select Country",
                  choices = c(data_malnutrition$Country)), 
      sliderInput(inputId = "Year",
                  label = "Select Year Range",
                  min = as.numeric(year_range[1]),
                  max = as.numeric(year_range[2]),
                  value = year_range,
                  step = 1,
                  sep = "")),
    
    mainPanel(
      plotOutput("UnderweightChart"),
      p(" "),
      p("The chart depicting underweight population by country represents the
        total population of each country that is underweight. The reason we 
        selected this dataset is because malnutrition is continuously a growing
        problem and makes people's health more vulnerable. This original data set
        includes many other data points about each country including the percent 
        of the population which is  'wasting', 'overweight', 'stunting' , or 'underweight'.
        We selected the “underweight” category as it best answered our research question
        of how to combat world hunger and where efforts need to be made the most, 
        based on the percentage of underweight people.")
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
  p("Info-201: Technical Foundations of Informatics - The Information School - 
     University of Washington - Autumn 2022"),
  
  p("Asad Jaffery: asadjaf@uw.edu"), 
  p("Beliz Ozhan: beliz@uw.edu"),  
  p("Curt Tanaka: ctanakaa@uw.edu"),
  
  h3("Abstract"),
  p("Prevalence of undernourishment varies from country to country and percentages have been fluctuating 
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
  p("World Hunger, Education, Hunger Rates by year"),
  
  h3("Introduction"),
  p("Hunger and undernourishment are some of the leading causes of severe or fatal
     health consequences globally, especially in children. The main issue is lack 
     of access to food resources and a well balanced diet. By 2030, the United
     Nations set a target to “end hunger” as part of their", 
     tags$a(href="https://sdgs.un.org/goals", "Sustainable Development Goals"),
    ". Looking at this dataset, however, hunger and undernourishment
    is still a problem around the world, even if percentages have declined.
    We plan to address the issue of undernourishment, by looking at the trends 
    around the world through this dataset, and to highlight which countries need
    more support than others in food supply and dietary education. By measuring
    which populations have the largest percentage of insufficient diets, 
    action can be taken to truly end world hunger."),
  
  h3("Problem Domain"),
  p("After a steady decline over the last decade, world hunger is again, on the 
     rise. The COVID-19 pandemic has had a brutal effect on the entire world, 
     especially those on the brink of starvation. Unfortunately, world hunger has 
     reached nearly 10 percent since 2019, and the problem seems to only be 
     getting worse as the global rate of inflation is also rising (World Against Hunger).
     Thus, we have decided to pick a data set that studies the rates of hunger in
     176 countries around the world, on a year by year basis in hopes to 
     contribute to the fight against hunger."),
  
  h3("Direct and Indirect Stakeholders"),
  p("The people who are directly involved with the data (direct stakeholders) 
     are those who are getting an insufficient caloric intake. Since the data set
     we are looking at examines 176 countries, these people can be located in any
     of these countries. Individuals who would be examining this data, or using it
     creating solutions for the issue of world hunger would be considered indirect
     stakeholders."),
  
  h3("Human Values"),
  p("The idea of attaining access to food being a human right is widely accepted.
     Infact, the 1966 International Covenant on Economic, Social and Cultural 
     Rights 'enshrined’ that idea after the right to food was recognized as a
     right to an adequate standard of living in the 1948 Universal Declaration 
     of Human Rights [(Office of the High Commissioner for Human Rights)](https://www.ohchr.org/sites/default/files/Documents/Publications/FactSheet34en.pdf). 
     Thus, the stance that we are taking, is one of forward progression. Every human 
     has a right to food, and the issue of hunger is one that we, as privileged 
     individuals, are attempting to alleviate. Our human values are intrinsic rights 
     that every human being should have."),
  
  h3("Potential Benifits"),
  p("Besides the fact that every human has a right to a balanced, and full diet, 
     studying world hunger, and eventually reaching zero hunger, has the potential
     to benefit the entire world in many ways. For instance: education. Studies
     have shown that children with a balanced diet, and a full caloric intake are
     able to be more energetic in the classroom, and perform better in the 
     academic environment (The Borgen Project). 
     This also implies a more efficient world economy, as better education rates 
     result in a more sustainable workforce."),
  
  h3("Our Job"),
  p("The harms of human starvation start with the moral obligation that we all 
     have. As humans who have full access to technology, education, and food, it 
     is our job to do our part in helping those who were born into less fortunate 
     circumstances. Thus, we have chosen to do our project on hunger rates around 
     the world, since hunger is a prerequisite for many other privileges that we 
     have (see ‘Potential Benefits’)."),
  
  h3("Research Questions"),
  p("How has hunger and undernourishment progressed on a global scale, what 
  trends have become apparent during the early twenty-first century?"),
  p("What countries have been hit hardest by the problems of hunger and 
     undernourishment in the first decade of the 2000s and the second decade 
     of the 2000s, is there any relation between the two?"),
  p("How has the price of common food goods in all countries affected by 
     hunger and undernourishment (defined as a % of population greater than 10%) 
     from the years 2003 to 2020 affected the rates of hunger and 
     undernourishment?"),
  
  tags$a(href="https://www.google.com", "Click here!"),
  # dataset
  
  h3("Expected Implications"),
  p("Assuming that we find the answer to world hunger, there are many
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
  p("- The first limitation to using this dataset is that the data fails to 
     represent all people within a country. Many undernourished people or those 
     struggling with hunger may live in remote areas, where they will be missed 
     by the statisticians. Additionally, not every country across the globe has 
     an accurate way to measure total census, therefore, the percentage of hunger
     (which is based on the main population) may not be accurate. One way to 
     address this limitation is to create a universal system for tracking 
     population changes. This could be one system where every person is entered, 
     that way all data remains true to the times."),
     
     p("- Another limitation in trying to solve the problem of world hunger is the 
    disconnect between the data, policies, and actual implementation. Though this 
    data is helpful to support policies that would push for more incentives to 
    improve nourishment, it is very difficult to carry out actions and resources, 
    making them readily accessible for everyone. Just by looking at these statistics
    little can actually be done to end world hunger, however, these statistics are 
    the first steps in highlighting the problem, and thus the first steps in making
    change."),
  
  
  h3("Sources"),
  tags$a(href="https://sdgs.un.org/goals", "Sustainable Development Goals"),
  # p("Sustainable Development Goals: https://sdgs.un.org/goals"),
  p("Office of the High Commissioner for Human Rights: https://www.actionagainsthunger.org/the-hunger-crisis/world-hunger-facts/"),
  p("Borgen Project: https://borgenproject.org/effects-of-hunger-on-education/"),
  p("Stock Image: https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fvector%2Fstop-hunger-illustration-gm895972780-247475800&psig=AOvVaw35Xgs1C3lHIoRi3jfDkpur&ust=1670466525250000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCND56vK65vsCFQAAAAAdAAAAABAD"),
  p()
  
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

