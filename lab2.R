library(tidyverse)
library(palmerpenguins)

pgs <- penguins %>% drop_na()

theme_set(theme_classic())
pgs %>% 
  ggplot(aes(x = bill_length_mm, bill_depth_mm, color = species)) +
  geom_point(size = 3, alpha = 0.6) +
  labs(x = "Bill length (mm)",
       y = "Bill depth (mm)",
       color = "Species:") +
  scale_color_viridis_d(begin = 0.15, end = 0.85) +
  theme(legend.position = "top",
        text = element_text(size=16))