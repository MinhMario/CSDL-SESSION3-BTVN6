use db_btth;
CREATE TABLE PRODUCTS (
    ProductID   VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100),
    Size        VARCHAR(10),
    Price       DECIMAL(10, 2) CHECK (Price > 0)  -- Chặn giá âm
);


INSERT INTO PRODUCTS (ProductID, ProductName, Size, Price)
VALUES
    ('P01', 'Áo sơ mi trắng', 'L',  250000),
    ('P02', 'Quần Jean xanh', 'M',  450000),
    ('P03', 'Áo thun Basic',  'XL', 150000);

INSERT INTO PRODUCTS (ProductID, ProductName, Size, Price)
VALUES ('P04', 'Áo hoodie', NULL, 200000);

UPDATE PRODUCTS
SET Price=40000
WHERE ProductId='P02';

UPDATE PRODUCTS
SET Price=Price+Price*0.1;

DELETE FROM PRODUCTS 
WHERE ProductID='P03';

SELECT ProductName,Size From PRODUCTS
WHERE Price>30000;



