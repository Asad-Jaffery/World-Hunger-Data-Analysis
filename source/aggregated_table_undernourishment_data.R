# Load dataset 
undernourishment_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/prevalence-of-undernourishment.csv")

# Edit column names
colnames(undernourishment_data)[4] = "Prevalence_of_Undernourishment"
colnames(undernourishment_data)[1] = "Country"

# Group_by() table
undernourishment_table <- undernourishment_data %>% 
  select(Country, Year, Prevalence_of_Undernourishment) %>%
  filter(Year == max(Year)) %>%
  group_by(Country)



# View table
view_undernourishment_table <- function(){
  return(undernourishment_table)
}



