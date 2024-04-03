## -------------------------------------- ##
        # Spatial Module Prep Work
## -------------------------------------- ##
# Author(s): Nick J Lyon

# Purpose:
## Prepare data for the spatial modules

## ----------------------- ##
    # Housekeeping ----
## ----------------------- ##

# Load needed libraries
librarian::shelf(sf)

# Create the 'data' folder if it doesn't exist
dir.create(path = file.path("data"), showWarnings = F)

# Clear environment
rm(list = ls())

## ----------------------- ##
  # Vector Data Prep ----
## ----------------------- ##

# Identify path to `sf` North Carolina vector data
sf_file <- system.file(file.path("shape", "nc.shp"), package = "sf")

# Read it in
sf_obj <- sf::st_read(dsn = sf_file)

# Exploratory plot
plot(sf_obj, axes = T)

# Export locally to a more easily accessible directory
sf::st_write(obj = sf_obj, dsn = file.path("data", "nc.shp"), delete_layer = T)




# End ----
