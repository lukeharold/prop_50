#### California Prop 50 campaign finance analysis
### Luke Harold

install.packages("scales")

library(tidyverse)
library(ggplot2)
library(scales)

### committees that reported receiving contributions:
committee1 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_1.csv")
committee2 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_2.csv")
committee3 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_3.csv")
committee4 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_4.csv")
committee5 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_5.csv")
committee6 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_6.csv")
committee7 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_7.csv")
committee8 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_8.csv")
committee9 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_9.csv")
committee10 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_10.csv")                                                                                    
committee11 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_11.csv")                                                                                    
committee12 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_12.csv")
committee13 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_13.csv")
committee14 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_14.csv")
committee15 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_15.csv")
committee16 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_16.csv")
committee17 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_17.csv")
committee18 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_18.csv")
committee19 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_19.csv")
committee20 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_20.csv")
committee21 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_21.csv")
committee22 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_22.csv")
committee23 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_23.csv")
committee24 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_24.csv")
committee25 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_25.csv")
committee26 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_26.csv")
committee27 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_27.csv")
committee28 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_28.csv")
committee29 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_29.csv")
committee30 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_30.csv")
committee31 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_31.csv")
committee32 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_32.csv")
committee33 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_33.csv")
committee34 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_34.csv")
committee35 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_35.csv")
committee36 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_36.csv")
committee37 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_37.csv")
committee38 <- read_csv("~/documents/ca_elections/2025/prop_50/committee_38.csv")

### cleaning character types for analysis:
committee_1 <- committee1 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_2 <- committee2 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_3 <- committee3 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_4 <- committee4 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_5 <- committee5 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_6 <- committee6 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_7 <- committee7 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_8 <- committee8 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_9 <- committee9 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_10 <- committee10 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_11 <- committee11 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_12 <- committee12 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_13 <- committee13 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_14 <- committee14 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_15 <- committee15 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_16 <- committee16 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_17 <- committee17 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_18 <- committee18 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_19 <- committee19 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_20 <- committee20 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_21 <- committee21 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_22 <- committee22 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_23 <- committee23 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_24 <- committee24 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_25 <- committee25 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_26 <- committee26 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_27 <- committee27 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_28 <- committee28 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_29 <- committee29 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_30 <- committee30 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_31 <- committee31 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_32 <- committee32 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_33 <- committee33 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_34 <- committee34 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_35 <- committee35 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_36 <- committee36 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_37 <- committee37 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))
committee_38 <- committee38 %>% mutate(ZIP = as.character(ZIP), `ID NUMBER` = as.character(`ID NUMBER`))

### combining all committees into one dataset:
all_contribs <- bind_rows(committee_1, committee_2, committee_3, committee_4, committee_5, committee_6, committee_7, committee_8, committee_9, committee_10, 
          committee_11, committee_12, committee_13, committee_14, committee_15, committee_16, committee_17, committee_18, committee_19, committee_20,
          committee_21, committee_22, committee_23, committee_24, committee_25, committee_26, committee_27, committee_28, committee_29, committee_30,
          committee_31, committee_32, committee_33, committee_34, committee_35, committee_36, committee_37, committee_38)

all_contribs %>%
  view()


table(all_contribs$POSITION)

prop50supporters <- all_contribs[all_contribs$POSITION == "SUPPORT",]
prop50opponents <- all_contribs[all_contribs$POSITION == "OPPOSE",]

colnames(prop50supporters)

### biggest contributions by state

# by supporters

prop50_supporters <- prop50supporters %>%
  mutate(AMOUNT = as.numeric(gsub("[$,]", "", AMOUNT)))

supporters_by_state <- prop50_supporters %>%
  mutate(AMOUNT = as.numeric(AMOUNT)) %>%
  group_by(STATE) %>%
  summarise(total_contributions = sum(AMOUNT, na.rm = TRUE))

supporters_by_state %>% view()

prop50_supporters %>% view()

###graphic

state_totals <- prop50_supporters %>%
  group_by(STATE) %>%
  summarise(Total = sum(AMOUNT, na.rm = TRUE)) %>%
  arrange(desc(Total)) %>%
  head(10)

ggplot(state_totals, aes(x = reorder(STATE, Total), y = Total)) +
  geom_bar(stat = "identity", fill = "darkgreen") +
  geom_text(aes(label = scales::dollar(Total)), hjust = -0.1, size = 3.5) +  # Add dollar labels
  coord_flip() +
  labs(title = "Total Contributions by State",
       x = "State",
       y = "Total Amount ($)") +
  scale_y_continuous(labels = scales::dollar) +
  theme_minimal() +
  expand_limits(y = max(state_totals$Total) * 1.15)  # Add space for labels

# by opponents

prop50_opponents <- prop50opponents %>%
  mutate(AMOUNT = as.numeric(gsub("[$,]", "", AMOUNT)))

opponents_by_state <- prop50_opponents %>%
  mutate(AMOUNT = as.numeric(AMOUNT)) %>%
  group_by(STATE) %>%
  summarise(total_contributions = sum(AMOUNT, na.rm = TRUE))

opponents_by_state %>% view()

### top individual contributors

#supporters

top_supporters <- prop50_supporters %>%
  group_by(`NAME OF CONTRIBUTOR`, CITY, STATE) %>%
  summarise(total_donated = sum(AMOUNT, na.rm = TRUE),
            number_of_contributions = n()) %>%
  arrange(desc(total_donated))

top_supporters %>% view()


#opponents

top_opponents <- prop50_opponents %>%
  group_by(`NAME OF CONTRIBUTOR`, CITY, STATE) %>%
  summarise(total_donated = sum(AMOUNT, na.rm = TRUE),
            number_of_contributions = n()) %>%
  arrange(desc(total_donated))

top_opponents %>% view()

### total contributions

sum(prop50_supporters$AMOUNT, na.rm = TRUE)

sum(prop50_opponents$AMOUNT, na.rm = TRUE)

### California contribs

# supporters

california_supporters <- prop50_supporters %>%
  filter(STATE == "CA")

# Clean and convert AMOUNT
california_supporters <- california_supporters %>%
  mutate(AMOUNT = as.numeric(gsub("[$,]", "", AMOUNT)))

california_supporters %>% view()
write.csv(california_supporters, "~/documents/ca_elections/2025/prop_50/ca_supporters.csv", row.names = FALSE)

# Group by city
ca_supporters_by_city <- california_supporters %>%
  group_by(CITY) %>%
  summarise(total_contributions = sum(AMOUNT, na.rm = TRUE),
            number_of_contributions = n()) %>%
  arrange(desc(total_contributions))

ca_supporters_by_city %>% view()

# Find the top individual donors in California for supporters
top_ca_supporters <- california_supporters %>%
  group_by(`NAME OF CONTRIBUTOR`, CITY) %>%
  summarise(
    total_donated = sum(AMOUNT, na.rm = TRUE),
    number_of_contributions = n()
  ) %>%
  arrange(desc(total_donated))

# View the top 20 individual donors
head(top_ca_supporters, 20)

write.csv(top_ca_supporters, "~/documents/ca_elections/2025/prop_50/top_ca_supporters.csv", row.names = FALSE)

# opponents

california_opponents <- prop50_opponents %>%
  filter(STATE == "CA")

# Clean and convert AMOUNT
california_opponents <- california_opponents %>%
  mutate(AMOUNT = as.numeric(gsub("[$,]", "", AMOUNT)))

# Group by city
ca_opponents_by_city <- california_opponents %>%
  group_by(CITY) %>%
  summarise(total_contributions = sum(AMOUNT, na.rm = TRUE),
            number_of_contributions = n()) %>%
  arrange(desc(total_contributions))

ca_opponents_by_city %>% view()
write.csv(california_opponents, "~/documents/ca_elections/2025/prop_50/ca_opponents.csv", row.names = FALSE)

write.csv(ca_supporters_by_city, "~/documents/ca_elections/2025/prop_50/ca_supporters_by_city.csv", row.names = FALSE)
write.csv(ca_opponents_by_city, "~/documents/ca_elections/2025/prop_50/ca_opponents_by_city.csv", row.names = FALSE)


###############

# Building an interactive map


# California Prop 50 Contributions Interactive Map
# This R script creates an interactive map showing contributions by city

# Install required packages if needed
# install.packages("leaflet")
# install.packages("dplyr")

install.packages("leaflet")

# California Prop 50 Contributions Interactive Map with Top Donors
# This R script creates an interactive map showing contributions by city with top 5 donors

# Install required packages if needed
# install.packages("leaflet")
# install.packages("dplyr")
# install.packages("htmlwidgets")

library(leaflet)
library(dplyr)
library(htmlwidgets)

# Read the detailed donor data
supporters_full <- read.csv("~/documents/ca_elections/2025/prop_50/top_ca_supporters.csv", stringsAsFactors = FALSE)
opponents_full <- read.csv("~/documents/ca_elections/2025/prop_50/ca_opponents.csv", stringsAsFactors = FALSE)

# Convert AMOUNT to numeric for opponents (in case it's not)
opponents_full$AMOUNT <- as.numeric(opponents_full$AMOUNT)

# Get top 5 donors by city for supporters
top5_supporters_by_city <- supporters_full %>%
  mutate(CITY_UPPER = toupper(CITY)) %>%
  group_by(CITY_UPPER) %>%
  arrange(desc(total_donated)) %>%
  slice_head(n = 5) %>%
  summarise(
    top_donors = paste(
      paste0(
        row_number(), ". ", NAME.OF.CONTRIBUTOR, 
        " - $", format(total_donated, big.mark = ",", scientific = FALSE),
        " (", number_of_contributions, " contrib", ifelse(number_of_contributions > 1, "s", ""), ")"
      ),
      collapse = "<br/>"
    )
  )

# Get top 5 donors by city for opponents
# First aggregate by contributor and city
opponents_aggregated <- opponents_full %>%
  mutate(CITY_UPPER = toupper(CITY)) %>%
  group_by(NAME.OF.CONTRIBUTOR, CITY_UPPER) %>%
  summarise(
    total_donated = sum(AMOUNT, na.rm = TRUE),
    number_of_contributions = n(),
    .groups = 'drop'
  )

top5_opponents_by_city <- opponents_aggregated %>%
  group_by(CITY_UPPER) %>%
  arrange(desc(total_donated)) %>%
  slice_head(n = 5) %>%
  summarise(
    top_donors = paste(
      paste0(
        row_number(), ". ", NAME.OF.CONTRIBUTOR, 
        " - $", format(total_donated, big.mark = ",", scientific = FALSE),
        " (", number_of_contributions, " contrib", ifelse(number_of_contributions > 1, "s", ""), ")"
      ),
      collapse = "<br/>"
    )
  )

# Supporters data with coordinates
supporters_data <- data.frame(
  city = c("Sacramento", "Los Angeles", "San Francisco", "Oakland", "Santa Cruz", 
           "Palo Alto", "Menlo Park", "San Diego", "Atherton", "San Jose",
           "Beverly Hills", "Berkeley", "Santa Monica", "Los Altos", "Long Beach",
           "Newport Beach", "Santa Ana", "Woodside", "Pasadena", "Roseville",
           "Santa Rosa", "Fresno", "Bakersfield"),
  amount = c(20824741.46, 6269631.34, 6054586.59, 4397797.83, 2110514.33,
             1687461.99, 1145833, 952303.73, 718880.01, 517927.58,
             405911, 334375.5, 311459, 309925, 308737.38,
             293837.5, 237488.5, 230097.5, 210754.75, 202011,
             167470.5, 95563, 24830),
  count = c(3499, 6864, 6741, 2891, 1373, 1008, 662, 5066, 96, 2985,
            420, 2272, 1169, 596, 1403, 400, 336, 142, 1043, 681,
            1721, 699, 439),
  lat = c(38.5816, 34.0522, 37.7749, 37.8044, 36.9741,
          37.4419, 37.4530, 32.7157, 37.4613, 37.3382,
          34.0736, 37.8715, 34.0195, 37.3852, 33.7701,
          33.6189, 33.7455, 37.4296, 34.1478, 38.7521,
          38.4405, 36.7378, 35.3733),
  lon = c(-121.4944, -118.2437, -122.4194, -122.2712, -122.0308,
          -122.1430, -122.1817, -117.1611, -122.1978, -121.8863,
          -118.4004, -122.2730, -118.4912, -122.1141, -118.1937,
          -117.9289, -117.8677, -122.2539, -118.1445, -121.2880,
          -122.7141, -119.7871, -119.0187),
  stringsAsFactors = FALSE
)

# Opponents data with coordinates
opponents_data <- data.frame(
  city = c("Palo Alto", "Woodside", "Santa Monica", "Corona", "Fresno",
           "Redding", "Newport Beach", "Bakersfield", "San Diego", "Roseville",
           "Beverly Hills", "San Rafael", "Los Angeles", "Irvine", "San Francisco"),
  amount = c(32802485.5, 1000000, 991000, 280517.27, 229607.47,
             150000, 134268.45, 128632.77, 120860.44, 101604.1,
             100614, 90393.12, 58832.36, 53500, 10000),
  count = c(19, 1, 2, 7, 11, 1, 11, 34, 41, 3,
            6, 12, 11, 5, 1),
  lat = c(37.4419, 37.4296, 34.0195, 33.8753, 36.7378,
          40.5865, 33.6189, 35.3733, 32.7157, 38.7521,
          34.0736, 37.9735, 34.0522, 33.6846, 37.7749),
  lon = c(-122.1430, -122.2539, -118.4912, -117.5664, -119.7871,
          -122.3917, -117.9289, -119.0187, -117.1611, -121.2880,
          -118.4004, -122.5311, -118.2437, -117.8265, -122.4194),
  stringsAsFactors = FALSE
)

# Merge top donors data with map data
supporters_data <- supporters_data %>%
  mutate(city_upper = toupper(city)) %>%
  left_join(top5_supporters_by_city, by = c("city_upper" = "CITY_UPPER"))

opponents_data <- opponents_data %>%
  mutate(city_upper = toupper(city)) %>%
  left_join(top5_opponents_by_city, by = c("city_upper" = "CITY_UPPER"))

# Function to calculate circle radius based on amount (increased size)
get_radius <- function(amount) {
  return(sqrt(amount) * 1.5)  # Increased from 0.5 to 1.5 for bigger circles
}

# Create the map with black and white tiles
# If you see a gray box, uncomment the next line and comment out the CartoDB line
ca_map <- leaflet() %>%
  addProviderTiles(providers$CartoDB.Positron) %>%  # Reliable black and white map style
  # addTiles() %>%  # Fallback: use this if CartoDB doesn't work
  setView(lng = -119.5, lat = 37.0, zoom = 6)  # Center on California

# Add supporters circles
ca_map <- ca_map %>%
  addCircles(
    data = supporters_data,
    lng = ~lon,
    lat = ~lat,
    radius = ~get_radius(amount),
    color = "#1B5E20",
    fillColor = "#4CAF50",
    fillOpacity = 0.8,  # Increased from 0.6 to 0.8 for more visibility
    weight = 3,  # Increased from 2 to 3 for thicker borders
    popup = ~paste0(
      "<div style='max-width: 400px;'>",
      "<strong style='color: #2E7D32; font-size: 18px;'>", city, "</strong><br/>",
      "<strong style='color: #4CAF50; font-size: 14px;'>SUPPORTERS</strong><br/><br/>",
      "<strong>Total:</strong> $", format(amount, big.mark = ",", scientific = FALSE), "<br/>",
      "<strong>Contributions:</strong> ", format(count, big.mark = ","), "<br/>",
      "<strong>Avg/contribution:</strong> $", format(round(amount/count), big.mark = ","), "<br/><br/>",
      "<strong style='color: #2E7D32;'>Top 5 Donors:</strong><br/>",
      "<div style='font-size: 12px; padding-left: 5px;'>",
      ifelse(is.na(top_donors), "No detailed data available", top_donors),
      "</div>",
      "</div>"
    ),
    group = "Supporters"
  )

# Add opponents circles
ca_map <- ca_map %>%
  addCircles(
    data = opponents_data,
    lng = ~lon,
    lat = ~lat,
    radius = ~get_radius(amount),
    color = "#B71C1C",
    fillColor = "#F44336",
    fillOpacity = 0.8,  # Increased from 0.6 to 0.8 for more visibility
    weight = 3,  # Increased from 2 to 3 for thicker borders
    popup = ~paste0(
      "<div style='max-width: 400px;'>",
      "<strong style='color: #C62828; font-size: 18px;'>", city, "</strong><br/>",
      "<strong style='color: #F44336; font-size: 14px;'>OPPONENTS</strong><br/><br/>",
      "<strong>Total:</strong> $", format(amount, big.mark = ",", scientific = FALSE), "<br/>",
      "<strong>Contributions:</strong> ", format(count, big.mark = ","), "<br/>",
      "<strong>Avg/contribution:</strong> $", format(round(amount/count), big.mark = ","), "<br/><br/>",
      "<strong style='color: #C62828;'>Top 5 Donors:</strong><br/>",
      "<div style='font-size: 12px; padding-left: 5px;'>",
      ifelse(is.na(top_donors), "No detailed data available", top_donors),
      "</div>",
      "</div>"
    ),
    group = "Opponents"
  )

# Add layer controls to toggle between supporters and opponents
ca_map <- ca_map %>%
  addLayersControl(
    overlayGroups = c("Supporters", "Opponents"),
    options = layersControlOptions(collapsed = FALSE)
  )

# Display the map
ca_map

# Save the map as an HTML file with custom header
saveWidget(ca_map, "temp_map.html", selfcontained = TRUE)

# Read the HTML file
html_content <- readLines("temp_map.html")

# Create custom header HTML
custom_header <- '
<style>
.custom-header {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 40px 20px;
  text-align: center;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}
.custom-header h1 {
  font-size: 2.5em;
  margin: 0 0 10px 0;
  font-weight: bold;
}
.custom-header .byline {
  font-size: 1.1em;
  margin: 10px 0;
  font-style: italic;
  opacity: 0.95;
}
.custom-header .description {
  font-size: 1em;
  max-width: 800px;
  margin: 20px auto 0 auto;
  line-height: 1.6;
  opacity: 0.95;
}
</style>
<div class="custom-header">
  <h1>California Prop 50 Campaign Contributions Map</h1>
  <div class="byline">By [Your Name] and Claude (Anthropic)</div>
  <div class="description">
    This interactive map visualizes campaign contribution data for California Proposition 50, 
    showing the geographic distribution of financial support across the state. Click on any city 
    to see total contributions, average donation amounts, and the top five individual donors. 
    Use the layer controls to toggle between supporters and opponents of the measure.
  </div>
</div>
'

# Insert the custom header after the opening body tag
body_index <- grep("<body>", html_content)[1]
html_content <- c(
  html_content[1:body_index],
  custom_header,
  html_content[(body_index + 1):length(html_content)]
)

# Write the modified HTML
writeLines(html_content, "california_prop50_map_with_donors.html")

# Clean up temp file
file.remove("temp_map.html")

print("Map saved as california_prop50_map_with_donors.html with custom header")
print("Replace [Your Name] in the byline with your actual name!")

