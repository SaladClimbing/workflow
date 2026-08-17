# Create a beautiful plot using diamonds dataset
library(tidyverse)

diamonds |>
  ggplot(aes(x = clarity, y = price, fill = cut)) +
  geom_violin(alpha = 0.7) +
  scale_fill_brewer(palette = "Dark2") +
  labs(
    title = "Diamond Price Distribution by Clarity",
    subtitle = "Violin plot showing price ranges across different cut qualities",
    x = "Clarity",
    y = "Price (USD)",
    fill = "Cut Quality"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    panel.grid.major.x = element_blank()
  )

ggsave("diamonds-2.png", width = 10, height = 6, dpi = 150)
