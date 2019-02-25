#{["city":"city_state", "percent":"percentage_number"]},
cat average_sunshine_percent.csv | awk -F"," '{print "{\"city\":" "\"" $1 ", " $2"\",\"percent\":" "\""$3"\"},"}' > average_sunshine_percent.json 


#[["city_name", "percentage_number"]]
cat average_sunshine_percent.csv | awk -F"," '{print "[\"" $1 ", " $2 "\"" ", " $3 "],"}' > ../average_sunshine_percent.js 
