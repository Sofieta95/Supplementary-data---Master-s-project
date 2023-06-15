#install.packages("openxlsx")
library(openxlsx)

#Glucose
# Set the file path to your Excel file
file_path <- "C:/Users/sofie/OneDrive/Documents/Master - Data/RStudio-Glucose.xlsx"

# Read the Excel file into a data frame
GlucoseFile <- read.xlsx(file_path, sheet = "Glucose")

# View the data frame
View(GlucoseFile)

TimeG = GlucoseFile$time_h
Log_Dryweight_G = GlucoseFile$log_mg_ml

plot(TimeG, Log_Dryweight_G)

modelGlucose = lm(Log_Dryweight_G ~ TimeG)
summary (modelGlucose)
attributes(modelGlucose)

#Glycerol:
# Read the Excel file into a data frame
GlycerolFile <- read.xlsx(file_path, sheet = "Glycerol")

# View the data frame
View(GlycerolFile)

TimeGly = GlycerolFile$time_h
Log_DryweightGly = GlycerolFile$log_mg_ml

plot(TimeGly, Log_DryweightGly)

modelGlycerol = lm(Log_DryweightGly ~ TimeGly)
summary (modelGlycerol)


#Xylose:
# Read the Excel file into a data frame
XyloseFile <- read.xlsx(file_path, sheet = "Xylose")

# View the data frame
View(XyloseFile)

TimeXyl = XyloseFile$time_h
Log_DryweightXyl = XyloseFile$log_mg_ml

plot(TimeXyl, Log_DryweightXyl)

modelXylose = lm(Log_DryweightXyl ~ TimeXyl)
summary (modelXylose)


#Mannitol:
# Read the Excel file into a data frame
MannitolFile <- read.xlsx(file_path, sheet = "Mannitol")

# View the data frame
View(MannitolFile)

TimeMan = MannitolFile$time_h
Log_DryweightMan = MannitolFile$log_mg_ml

plot(TimeMan, Log_DryweightMan)

modelMannitol = lm(Log_DryweightMan ~ TimeMan)
summary (modelMannitol)


#Succinate:
# Read the Excel file into a data frame
SuccinateFile <- read.xlsx(file_path, sheet = "Succinate")

# View the data frame
View(SuccinateFile)

TimeSuc = SuccinateFile$time_h
Log_DryweightSuc = SuccinateFile$log_mg_ml

plot(TimeSuc, Log_DryweightSuc)

modelSuccinate = lm(Log_DryweightSuc ~ TimeSuc)
summary (modelSuccinate)
