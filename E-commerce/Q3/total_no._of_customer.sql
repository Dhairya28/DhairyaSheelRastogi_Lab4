#Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.

SELECT COUNT(*) AS "NO. OF CUSTOMER",cust.CUS_GENDER 
FROM order_directory.customer cust 
JOIN order_directory.order od ON cust.CUS_ID = od.CUS_ID 
WHERE od.ORD_AMOUNT>=3000 
GROUP BY cust.CUS_GENDER;