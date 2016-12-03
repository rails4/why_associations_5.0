## NYC Flights, 2015

* Modified scripts from the [nycflights13](https://github.com/hadley/nycflights13)
  R package.
* [METAR Information for EPGD (12150) in Gdansk-Rebiechowo, Poland](http://weather.gladstonefamily.net/site/EPGD).

Importing data into databases:

* [The _dplyr_ vignette on Databases](https://cran.r-project.org/web/packages/dplyr/vignettes/databases.html)
* [Getting started with MongoDB in R](https://cran.r-project.org/web/packages/mongolite/vignettes/intro.html)

Load data into RStudio:

```r
source("data-raw/flights-2014.r")

library(tibble)
library(dplyr)

setwd("~/Repos/rails4/why_associations_5.0/db")

load("data-raw/flights.rda")
ls()
flights
# A tibble: 509,083 × 19

my_db = src_sqlite("development.sqlite3", create = FALSE)
flights_sqlite = copy_to(
  my_db,
  flights,
  temporary = FALSE,
  indexes = list(c("year", "month", "day"), "carrier", "tailnum")
)

select(flights_sqlite, year:day, dep_delay, arr_delay)
filter(flights_sqlite, dep_delay > 240)
arrange(flights_sqlite, year, month, day)
mutate(flights_sqlite, speed = air_time / distance)
summarise(flights_sqlite, delay = mean(dep_time))
```
