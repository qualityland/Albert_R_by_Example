
# average yearly temperatures in New Haven in degrees Celsius (1912 - 1971)
nht <- 5/9 * (nhtemp - 32)

# Fahrenheit temperatures (1968 - 1971)
ft <- c(51.9, 51.8, 51.9, 53)
ft

# Celsius temperatures (rounded)
ct <- round(5/9 * (ft - 32), digits = 1)
ct
