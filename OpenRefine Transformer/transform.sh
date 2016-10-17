# A BASH script for sending a CSV file with drug data
# to a BatchRefine (OpenRefine) instance for generating
# Linked Drug Data for the LinkedDrugs dataset
#
# The CSV file must follow the structure provided by
# our CSV template
#
# Variable: drugs.csv 
# It should denote the CSV file to be transformed

curl -XPOST --data-binary @drugs.csv -H 'Content-Type:text/csv' -H 'Accept:text/turtle'  'http://data.finki.ukim.mk:8310?refinejson=https://raw.githubusercontent.com/etnc/linked-drugs/master/OpenRefine%20Transformer/loddw-transform.json'