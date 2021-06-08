
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

