# Add integers from 1 through 10
result <- sum(1:10)
print(result)

# Create a beautiful plot using diamonds dataset
library(tidyverse)

diamonds |>
  ggplot(aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.5) +
  facet_wrap(~clarity) +
  scale_color_brewer(palette = "Set1") +
  labs(
    title = "Diamond Price vs Carat Weight",
    subtitle = "Colored by cut quality and faceted by clarity",
    x = "Carat Weight",
    y = "Price (USD)",
    color = "Cut Quality"
  ) +
  theme_minimal() +
  theme(plot.title = element_text(size = 14, face = "bold"))

ggsave("diamonds-1.png", width = 10, height = 6, dpi = 150)
