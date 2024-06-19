install.packages("reticulate")

library(reticulate)

# Specify the path to the Python environment you want to use
use_python("C:/Users/adele/miniconda3/envs/bugtracker", required = TRUE)

# Import the bugtracker package
bugtracker <- import("bugtracker")

# Import numpy if needed
numpy <- import("numpy")


# Example: Calling a Python function from bugtracker
result <- bugtracker$core$utils$arr_info(numpy$array(c(1, 2, 3)), "lalal")
print(result)


#Using the calib file in R

source_python("C:/Projects/Radar Research Project/bugtracker/apps/calib.py")

# Set the working directory to where calib.py and bugtracker.json are located
setwd("C:/Projects/Radar Research Project/bugtracker/apps")


# Define the arguments
timestamp <- "201307150230"
dtype <- "iris"
station <- "xam"
data_hours <- 6
debug <- FALSE
clear <- FALSE
plot <- FALSE

# Call the run_calibration function directly
run_calibration(timestamp, dtype, station, data_hours, debug, clear, plot)



#Using the tracker file in R

# Import the Python script
source_python("C:/Projects/Radar Research Project/bugtracker/apps/tracker.py")


# Define the arguments
timestamp <- "201307150230"
dtype <- "iris"
station <- "xam"
data_hours <- 0
range <- 100
debug <- FALSE

# Call the run_calibration function directly
run_tracker(timestamp, dtype, station, data_hours, range, debug)
