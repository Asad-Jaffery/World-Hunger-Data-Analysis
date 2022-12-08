library(shiny)
source("app_server.R")

#------------------------------------------------------------------------------#
#page one content 

page_one <- tabPanel(
  
  "Introduction",
  titlePanel("Introduction"),
  
  sidebarPanel(
    h3("Research Questions"),
    p("What has been the global trend in world hunger across various populations?"),
    p(" "),
    
    p("What countries suffer from food insecurity and have the highest percentage of 
      undernourished people?"),
    p("  "),
    
    p("What is the difference between developing countries and developed countries
      in terms of hunger percentages based on their populations?"),
  ),
  
  mainPanel(
    h3("Content Description"),
    p("To study world hunger, we decided to use various datasets in order to represent 
      the varying severity of world hunger around the globe, and highlight areas
      where most efforts to combat world hunger must be placed."),
    
    p("Our first dataset, the", strong("Prevalence of Undernourishment"),"allows
      us to easily determine the countries which are most greatly affected by hunger.
      The prevalence of undernourishment is calculated based on the percentage of 
      population that is undernourished from the total population of that country. 
      This set of data provides nearly two decades of tracking which allows us 
      to look for trends on both a global and country scale.
      The dataset was originally published online at", em("OurWorldInData.org"), " by
      Max Roser and Hannah Ritchie in 2019 in the article, ", em("Hunger and Undernourishment"),
      "and combines data from various organizations such as FAO, IFAD, UNICEF, WFP and WHO."),
    
    p("Our second dataset,", strong("Malnutrition Estimates"), "gives us specific
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
        We selected the 'underweight' category as it best answered our research question
        of how to combat world hunger and where efforts need to be made the most, 
        based on the percentage of underweight people."),
      p("*It is important to note that in this dataset some countries are missing
      data values for the percentage of underweight populations for a few years 
      in between 1983 and 2019. This is due to the fact that data was not recorded,
      and therefore cannot be included in our visualization. The year range 
      slider is there in order to help orient each country's available data in a way 
      that still displays a meaningful trend in underweight populations.")
    )
  ))


#------------------------------------------------------------------------------#
#page 4 content 

page_four <- tabPanel(
  "Summary",
  h3("Key Takeaways"),
  
  p("-By looking at national trends it can be understood that developing countries
     such as Yemen or Afghanistan have had significantly higher rates of hunger 
     and undernourishment over the years compared to other populations, and these
     numbers are starting to rise again in light of current economic crises, 
     due to the pandemic or other extraneous factors."),
  p(" "),
  
  p("-The prevalence of undernourishment for the world somewhat steadily
  declined from 2001 until 2018, but since 2019 the data trends show a rising 
  curve due to the growing gap between wealthy countries and poorer countries 
  and rising populations."),
  p(" "),
  
  p("-In the United States of America, according to the malnutrition estimates
  of underweight populations, the underweight percentage of the total population
  has decreased by 50% from 2000 to 2012."),
  p(" "),
  p(" "),
  p(" "),
  
  img(
    src = "https://www.awarenessdays.com/wp-content/uploads/2021/10/We-are-one-global-family-1.png",
    width = 800
  ),
  p(" "),
  em("World Hunger Day is May 28. Millions of people across the world are
    still suffering chronic hunger. It is important to bring awareness to this
    issue and help increase food security across the globe.")
)
#------------------------------------------------------------------------------#
#page 5 content 

page_five <- tabPanel(
  "Report",
  h1("Combating World Hunger through Data Analysis"),
  
  h3("Project 'Dub H'"),
  
  p("Affiliation: Info-201: Technical Foundations of Informatics - The Information School - 
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
  p("World Hunger, Malnutrition, Food Security, Undernourishment"),
  
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
     getting worse as the global rate of inflation is also rising (", tags$a(href="https://www.actionagainsthunger.org/the-hunger-crisis/world-hunger-facts/", "World Against Hunger"),").
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
     of Human Rights", tags$a(href="https://www.ohchr.org/sites/default/files/Documents/Publications/FactSheet34en.pdf", "(Office of the High Commissioner for Human Rights)"), "
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
     academic environment (", tags$a(href="https://borgenproject.org/effects-of-hunger-on-education/", "The Borgen Project"), "). 
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
  p("What has been the global trend in world hunger across various populations?
    This question is important as it depicts the extent to which hunger is 
      still a problem that needs to be solved. This question is motivated by 
      the goal to end world hunger and eradicate the severity of the issue."),
  
  p("What countries suffer from food insecurity and have the highest percentage of 
      undernourished people? This question is important to understand where
      more efforts need to be made to combat hunger, and is motivated by the 
      idea to increase nutrition resources for developing countries."),
  
  p("What is the difference between developing countries and developed countries
      in terms of hunger percentages based on their populations?This question
      is important to understand what factors cause world hunger and what the gap is
      like between a country that is developed versus still developing.
      The motivation behind this is to eradicate discrepancy and make sure 
      every country has equal opportunity to end their hunger."),
  
  h3("Datasets"),
  img(
    src = "https://raw.githubusercontent.com/info201b-au2022/world_hunger/main/source/data_table_ss.png",
    width = 800
  ),
  p(" "),
  tags$a(href="https://raw.githubusercontent.com/info201b-au2022/world_hunger/
         main/data/prevalence-of-undernourishment.csv", "Prevalence of Undernourishment Data"),
  p("The Prevalence of Undernourishment Dataset allows us to easily determine 
    the countries which are most greatly affected by hunger. To go along with 
    this, this set of data provides nearly two decades of tracking which allows 
    us to look for trends on both a global and country scale. This set contains 
    3344 Unique observations and 4 unique variables. Dataset Originally
    publish online at OurWorldInData.org by Max Roser and Hannah Ritchie in 2019
    in the article Hunger and Undernourishment. By combining data from FAO, 
    IFAD, UNICEF, WFP and WHO to create the data set above. Collected from Unicef."),
  tags$a(href="https://raw.githubusercontent.com/info201b-au2022/world_hunger/
         main/data/malnutrition-estimates.csv", "Malnutrition Estimates Data"),
  p("The Malnutrition Dataset gives us specific and necessary 
    information on the different facets of malnutrition which are all very 
    important for our analysis. Thanks to the manner in which the data is 
    presented we can analyze the countries based on income levels and other 
    factors which our other data sets do not provide. This set includes 924 
    Observations and 20 variables. Data collected by Unicef. The data came from 
    the countries in the set but was compiled by UNICEF to have a better 
    understanding of the standing of state of food security of a country wide and global scale."),
  
  h3("Findings"),
  p("The vast majority of countries have had some sort of decrease in the percent of 
  their population that is undernourished. For many of these countries, we can see that 
  the percent of undernourishment is lower in 2019 than it was in 2001, which shows progress. 
  However, the cycle that each country has followed in order to reach that point significantly 
  differs. For instance, Turkmenistan had a gradual decline in the percent of its population 
  that was undernourished, until about 2007, where it started to spike again, until it decreased 
  rapidly. This differs from Tunisia, which has a (mostly) gradual decrease from 2001 till 2015, 
  where it leveled out before increasing. The exception to this trend of reduction, are countries 
  that have had major changes in their social, political, or economic state. This includes countries 
  like Yemen (humanitarian crisis), or Venezuela (inflation)."), 

  p("The main finding of the data that comes from the undernourishment chart is that 
  undernourishment (throughout the entire world) peaked in the early 2000’s. We find this 
  to be the case for most of the countries. Although there have been spikes in recent years, 
  they tend to not last for long. We can assume that this rapid decrease of these spikes stems
  from the development of countries and their infrastructure over the years"),
  
  h3("Discussion"),
  p("With the rising stability of the developed world, there becomes a larger gap between them 
  and the developing world. We believe that the developed world has an obligation to help progress 
  the countries that are being left behind, as they are the ones who are contributing to the poor 
  economic states of developing countries (i.e humanitarian crisis due to wars, sanctions, etc.)"),
  
  h3("Conclusion"),
  p("The progression of the majority of the world has become apparent when examining the undernourished 
  populations of each country. Throughout the world, there has been a steady decline in said population,
  however it has started to rise again. We can attribute this to the growing gap between developed 
  and developing countries. Countries like America are becoming increasingly healthy, with less 
  people suffering from issues like undernourishment and starvation. However, countries like 
  Afghanistan, Yemen, and Venezuela have been facing the issue of a rising undernourished population
  due to the economic crisis that they have experienced. Oue data examinations shed light on the fact 
  that developed countries have an obligation to help close the gap of health inequality to reach an 
  equitable world."),
  
  h3("Acknowledgments"),
  p("We would like to thank our professor David G Hendry, and our teaching assistant, 
  Parinita Shanthakumar Tyavanagimatt for guiding and assisting us throughout this project."), 
  

  h3("References"),
  p("THE 17 GOALS | Sustainable Development. (2015). Retrieved December 7, 2022, from Un.org website: https://sdgs.un.org/goals"),
  p("World Hunger Facts & Statistics | Action Against Hunger. (2022, October 13). Retrieved December 7, 2022, from Action Against Hunger website: https://www.actionagainsthunger.org/the-hunger-crisis/world-hunger-facts/"),
  p("Borgen Project. (2014, July 2). Effects of Hunger on Education | The Borgen Project. Retrieved December 7, 2022, from The Borgen Project website: https://borgenproject.org/effects-of-hunger-on-education/"),
  p('Hunger, S. (2017, December 19). Stop Hunger Illustration. Retrieved December 7, 2022, from iStock website: https://www.istockphoto.com/vector/stop-hunger-illustration-gm895972780-247475800'),
  p("World Hunger Day 2022 - Awareness Days Events Calendar 2022 & 2023. (2022, May 10). Retrieved December 7, 2022, from Awareness Days Events Calendar 2022 & 2023 website: https://www.awarenessdays.com/awareness-days-calendar/world-hunger-day-2022/"),
  p("Stack Overflow - Where Developers Learn, Share, & Build Careers. (2022). Retrieved December 7, 2022, from Stack Overflow website: https://stackoverflow.com/"),
  p("Shiny - Widget Gallery. (2022). Retrieved December 7, 2022, from Rstudio.com website: https://shiny.rstudio.com/gallery/widget-gallery.html")
  
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

