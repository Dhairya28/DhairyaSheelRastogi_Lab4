#Display customer name and gender whose names start or end with character 'A'.

SELECT cust.CUS_NAME,cust.CUS_GENDER 
FROM order_directory.customer cust 
WHERE cust.CUS_NAME like 'A%' or cust.CUS_NAME like '%A';