runif(1)

# packages
library(tidyverse)
library(lme4)
library(ggbeeswarm)
library(broom.mixed)
library(lattice)
# ```

# sleepstudy
data("sleepstudy", package = "lme4")
sleepstudy
# ```

# modify data and plot
corrected_sleepstudy <- sleepstudy |> 
  filter(Days > 1)

reaction_plot <- ggplot(corrected_sleepstudy, aes(Days, Reaction, group = Days, color = Subject)) +
  geom_violin(show.legend = FALSE) +
  geom_quasirandom(show.legend = FALSE) +
  scale_x_continuous(n.breaks = 8) +
  labs(y = "Reaction time (ms)", x = "Days of sleep deprivation")

reaction_plot
# ```