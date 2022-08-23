#Display all the orders along with product name ordered by a customer having Customer_Id=2

SELECT od.*,pro.PRO_NAME 
FROM order_directory.`order` od 
JOIN order_directory.supplier_pricing sp ON od.PRICING_ID = sp.PRICING_ID 
JOIN order_directory.product pro ON sp.PRO_ID=pro.PRO_ID
WHERE od.CUS_ID = 2;