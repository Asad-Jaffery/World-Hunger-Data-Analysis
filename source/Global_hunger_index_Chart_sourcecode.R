library(ggplot2)
library(dplyr)
library(viridis)
library(hrbrthemes)
library(plotly)

#load dataset
global_hunger_index <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-AsadJafferyy/main/data/global-hunger-index.csv")

#wrangle data
global_hunger_index <- global_hunger_index %>%
  select(Entity, Year, Global.Hunger.Index..2021.) %>%
  filter(Year == "2021")
global_hunger_index$id <- c(seq(1,128))  
  
View(global_hunger_index)

#calculate angles for circular bar chart
num_bars <- nrow(global_hunger_index)
angle <-  90 - 360 * (global_hunger_index$id-0.5) /num_bars

# calculate the alignment of labels: right or left
# If I am on the left part of the plot, my labels have currently an angle < -90
global_hunger_index$hjust<-ifelse( angle < -90, 1, 0)

# flip angle BY to make them readable
global_hunger_index$angle<-ifelse(angle < -90, angle+180, angle)

#plot
p <- ggplot(global_hunger_index, aes(x=as.factor(id), y=Global.Hunger.Index..2021.)) +       # Note that id is a factor. If x is numeric, there is some space between the first bar
  
  # This add the bars with a blue color
  geom_bar(stat="identity", fill=alpha("skyblue", 0.7)) +
  
  # Limits of the plot = very important. The negative value controls the size of the inner circle, the positive one is useful to add size over each bar
  ylim(-100,120) +
  
  # Custom the theme: no axis title and no cartesian grid
  theme_minimal() +
  theme(
    axis.text = element_blank(),
    axis.title = element_blank(),
    panel.grid = element_blank(),
    plot.margin = unit(rep(-1,4), "cm")      # Adjust the margin to make in sort labels are not truncated!
  ) +
  
  # This makes the coordinate polar instead of cartesian.
  coord_polar(start = 0) +
  
  # Add the labels, using the label_data dataframe that we have created before
  geom_text(global_hunger_index, aes(x=id, y=id+10, label=Entity, hjust=hjust), color="black", fontface="bold",alpha=0.6, size=2.5, angle= global_hunger_index$angle, inherit.aes = FALSE ) 

#make interactive
View(p)

