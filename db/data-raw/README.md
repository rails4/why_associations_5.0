## NYC Flights, 2015

* Modified scripts from the [nycflights13](https://github.com/hadley/nycflights13)
  R package.
* [METAR Information for EPGD (12150) in Gdansk-Rebiechowo, Poland](http://weather.gladstonefamily.net/site/EPGD).

Importing data into databases:

* [The _dplyr_ vignette on Databases](https://cran.r-project.org/web/packages/dplyr/vignettes/databases.html)
* [Getting started with MongoDB in R](https://cran.r-project.org/web/packages/mongolite/vignettes/intro.html)

How to add **id** attribute to existing tibble?

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

``````sh
sqlite3 development.sqlite3
sqlite> .help
sqlite> .schema --indent
```
```sql
CREATE TABLE `flights`(
  `year` INTEGER,
  `month` INTEGER,
  `day` INTEGER,
  `dep_time` INTEGER,
  `sched_dep_time` INTEGER,
  `dep_delay` REAL,
  `arr_time` INTEGER,
  `sched_arr_time` INTEGER,
  `arr_delay` REAL,
  `carrier` TEXT,
  `flight` INTEGER,
  `tailnum` TEXT,
  `origin` TEXT,
  `dest` TEXT,
  `air_time` REAL,
  `distance` REAL,
  `hour` REAL,
  `minute` REAL,
  `time_hour` REAL
);
CREATE INDEX `flights_year_month_day` ON `flights`(`year`, `month`, `day`);
CREATE INDEX `flights_carrier` ON `flights`(`carrier`);
CREATE INDEX `flights_tailnum` ON `flights`(`tailnum`);
```
