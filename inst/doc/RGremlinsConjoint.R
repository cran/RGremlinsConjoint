## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(RGremlinsConjoint)

## -----------------------------------------------------------------------------

# Read in the data
truck_design_file <- system.file("extdata", "simTruckDesign.csv", package = "RGremlinsConjoint")
truck_data_file <- system.file("extdata", "simTruckData.csv", package = "RGremlinsConjoint")
truckDesign <- read.csv(truck_design_file)
truckData <- read.csv(truck_data_file)

outputSimData_burn <- estimateGremlinsModel(truckData,
                                            truckDesign,
                                            R = 10,
                                            keepEvery = 1,
                                            num_lambda_segments = 2)


