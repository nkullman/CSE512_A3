# Retrieves and formats weather data
#	Location: KBFI (Boeing Field)
#	Dates: Oct 1, 2012 - Apr 23, 2015

library("weatherData")

# Get weather data
fremontWeatherData <- getSummarizedWeather(station_id = "KBFI",
                                        start_date = "2012-10-01",
                                        end_date = "2015-04-23",
                                        opt_all_columns = TRUE,
                                        opt_verbose = TRUE)
										
# Write raw output to file
write.csv(fremontWeatherData, file = "FremontWeatherData_Daily_raw.csv")
