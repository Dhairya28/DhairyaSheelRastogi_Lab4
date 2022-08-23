#Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”

DELIMITER &&
CREATE PROCEDURE displaySupplierRating() 
BEGIN
SELECT sup.SUPP_ID, sup.SUPP_NAME, rat.RAT_RATSTARS, 
CASE 
	WHEN rat.RAT_RATSTARS = 5  THEN 'Excellent Service' 
	WHEN rat.RAT_RATSTARS >= 4 THEN 'Good Service' 
	WHEN rat.RAT_RATSTARS > 2  THEN 'Average Service' 
	ELSE 'Poor Service' 
END AS TYPE_OF_SERVICE 
FROM order_directory.rating rat 
JOIN order_directory.`order` od ON rat.ORD_ID = od.ORD_ID
JOIN order_directory.supplier_pricing sp  ON sp.PRICING_ID = od.PRICING_ID
JOIN order_directory.supplier sup ON sup.SUPP_ID = sp.SUPP_ID;
END &&
DELIMITER ;


CALL displaySupplierRating();