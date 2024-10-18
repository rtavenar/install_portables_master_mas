# tidy
install.packages(c("tidyverse",
                   "tidymodels")
)
# Machine Learning

install.packages(c("kknn",
                   "klaR",
                   "doMC",
                   "pROC",
                   "plotROC",
                   "doParallel",
                   "rpart.plot",
                   "ISLR",
                   "caret",
                   "e1071",
                   "kernlab",
                   "randomForest",
                   "ranger",
                   "glmnet",
                   "OOBCurve",
                   "gbm",
                   "xgboost",
                   "vip",
                   "keras",
                   "UBL",
                   "cccd",
                   "bestglm",
                   "visdat"
))




# Visu
install.packages(c("FactoMineR",
                   "visNetwork",
                   "sparkline",
                   "gridExtra",
                   "rAmCharts",
                   "sf",
                   "rmapshaper",
                   "rnaturalearth",
                   "leaflet",
                   "plotly",
                   "igraph",
                   "flexdashboard",
                   "corrplot",
                   "shinydashboard",
                   "mapview",
                   "ggiraph"
))

# Quelques tests

library(tidyverse)
ggplot(iris)+aes(x=Sepal.Length,y=Sepal.Width)+geom_point()


library(sf)
nc <- sf::st_read(system.file("shape/nc.shp", package = "sf"), quiet = TRUE)
ggplot(nc) +
  geom_sf(aes(fill = AREA))

library(leaflet)
leaflet() |> addTiles()

library(mapview)
mapview(breweries)


library(rAmCharts)
amBoxplot(rnorm(100))
