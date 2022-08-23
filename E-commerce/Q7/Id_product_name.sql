#Display the Id and Name of the Product ordered after “2021-10-05”.

SELECT pro.PRO_ID,pro.PRO_NAME 
FROM order_directory.product pro 
JOIN order_directory.supplier_pricing sp ON sp.PRO_ID = pro.PRO_ID 
JOIN  order_directory.order od ON od.PRICING_ID=sp.PRICING_ID 
WHERE od.ORD_DATE > '2021-10-05';