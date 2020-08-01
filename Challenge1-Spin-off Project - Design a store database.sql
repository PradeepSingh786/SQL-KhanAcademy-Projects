/*Spin-off of "Project: Design a store database"
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. 
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. 
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items. */

CREATE TABLE Chaudhary_Clothing_Store(id INTEGER,cloth TEXT,Size INTEGER, Rating INTEGER,Season TEXT,Price INTEGER);


INSERT INTO Chaudhary_Clothing_Store VALUES (1, "Jeans", 5, 8, "All", 189);
INSERT INTO Chaudhary_Clothing_Store VALUES (2,"Dungree", 2, 9, "All", 399);
INSERT INTO Chaudhary_Clothing_Store VALUES (3, "Tank Top", 2, 6, "Summer", 400);
INSERT INTO Chaudhary_Clothing_Store VALUES (4, "Coat", 5, 9, "Winter", 600);
INSERT INTO Chaudhary_Clothing_Store VALUES (5, "Skirt", 3, 9, "Summer", 200);
INSERT INTO Chaudhary_Clothing_Store VALUES (6, "Poncho", 7, 8, "Rainy", 299);
INSERT INTO Chaudhary_Clothing_Store VALUES (7, "Top", 4, 5, "All", 299);
INSERT INTO Chaudhary_Clothing_Store VALUES (8,"Flannel", 7, 6, "All", 399);
INSERT INTO Chaudhary_Clothing_Store VALUES (9,"Trouser", 8, 6, "All", 899);
INSERT INTO Chaudhary_Clothing_Store VALUES (10,"Sweat Shirt", 6, 9, "Winter", 699);
INSERT INTO Chaudhary_Clothing_Store VALUES (11,"Kurta", 7, 8, "Summer", 499);
INSERT INTO Chaudhary_Clothing_Store VALUES (12,"T-Shirt", 7, 9, "Summer", 399);
INSERT INTO Chaudhary_Clothing_Store VALUES (13,"Pyjamas", 9, 4, "All", 599);
INSERT INTO Chaudhary_Clothing_Store VALUES (14,"Shocks", 7, 6, "All", 199);
INSERT INTO Chaudhary_Clothing_Store VALUES (15,"gloves", 4, 7, "All", 299);


SELECT cloth,size,price 

FROM Chaudhary_Clothing_Store 

ORDER BY price;








