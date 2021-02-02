library(RSelenium)
library(rvest)
library(tidyverse)
#https://cran.r-project.org/web/packages/RSelenium/vignettes/basics.html#introduction

# How Do I Get the Selenium Server Standalone Binary?

#---> downloaded several times, could not open

# downloaded dock to the machine 

# Connect to a Running Server
remDr <- remoteDriver(
  remoteServerAddr = "localhost",
  port = 4445L,
  browserName = "firefox"
)

remDr$open()


