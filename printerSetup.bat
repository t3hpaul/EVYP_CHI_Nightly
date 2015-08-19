echo "----------------Deleting All Printers----------------"

wmic printer where "Local='TRUE'" delete
wmic printer where "PortName LIKE 'IP_%%'" delete
wmic printer where "Local='FALSE'" delete

echo "----------------Adding Printers Back to Queue----------------"

