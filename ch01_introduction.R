
#-------------------------------------------------------------------------------
## Example 1.1 - Temperature Data
#-------------------------------------------------------------------------------

# time series of average annual temperatures in New Haven (1912 - 1971)
# in degrees Fahrenheit
nhtemp


# convert to degrees Celsius
nhtemp_C <- round(5/9 * (nhtemp - 32), digits = 1)
nhtemp_C

# New Haven temperatures (F) 1968 - 1971
nht <- c(51.9, 51.8, 51.9, 53)
nht

# Connecticut temperatures (F) 1968 - 1971
ct <- c(48, 48.2, 48, 48.7)
ct

# differences New Haven - Connecticut temperatures (F)
nht - ct


# same with ts object

# tail function for ts objects
tail.ts <- function(data, n) {
  data <- as.ts(data)
  window(data, start = tsp(data)[2] - (n - 1) / frequency(data))
}

# New Haven temp (ts)
nh_ts <- tail.ts(nhtemp, 4)
nh_ts

# Connecticut temp (ts)
c_ts <- ts(ct, start = 1968, end = 1971)
c_ts

# differences (ts)
nh_ts - c_ts


#-------------------------------------------------------------------------------
## Example 1.2 - President’s Heights
#-------------------------------------------------------------------------------


winner <- c(185, 182, 182, 188,
           188, 188, 185, 185,
           177, 182, 182, 193,
           183, 179, 179, 175)

opponent <- c(175, 193, 185, 187,
              188, 173, 180, 177,
              183, 185, 180, 180,
              182, 178, 178, 173)

length(winner)

# correction of Bill Clinton's height
winner[4:5] <- 189

# election years
year <- seq(from=2008, to=1948, by=-4)

# mean height
mean(winner)
mean(opponent)

# calculate height difference
difference <- winner - opponent

# create a data frame
data.frame(year, winner, opponent, difference)

# create a logical variable
taller.won <- winner > opponent

# how often did the taller win?
table(taller.won)

# percentage
table(taller.won) / length(taller.won) * 100

# barplot of height differences
barplot(rev(difference),
        xlab = "Election years 1948 to 2008",
        ylab = "Height difference in cm")



#-------------------------------------------------------------------------------
## Example 1.3 - Fatal Horsekicks at Prussian Cavalry
#-------------------------------------------------------------------------------


k <- c(0, 1, 2, 3, 4)
x <- c(109, 65, 22, 3, 1)

barplot(x, names.arg=k,
        xlab = "Number of fatalities per year and corps",
        ylab = "Number of corps years")
