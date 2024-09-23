# -------------------------------------------------------------------------
# Importacion de base de datos  -------------------------------------------
# -------------------------------------------------------------------------


# importar csv ------------------------------------------------------------

csvdt <- read.csv(file = "data/LA MOLINA 2014 POTATO WUE (FB) - fb.csv")

# importar tsv ------------------------------------------------------------

tsvdt <- read.delim("data/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv")

# import xlsx -------------------------------------------------------------

library(openxlsx)
xlsxdt <- openxlsx::read.xlsx(xlsxFile = "data/LA MOLINA 2014 POTATO WUE (FB).xlsx"
                              , sheet = "fb")

# importar Rstudio --------------------------------------------------------
library(readxl)
fb <- read_excel("data/LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                                            sheet = "fb")
View(fb)

# importar de google sheets -----------------------------------------------

library(inti) #autentificar en google
library(googlesheets4)
url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"

gs <- as_sheets_id(url)
fb <- googlesheets4::range_read(ss=gs, sheet="fb")

