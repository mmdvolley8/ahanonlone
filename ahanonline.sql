-- creat and import the exel date with sql import wizard
CREATE TABLE SaleTable (
    SalesID int,
    OrderID int,
    Customer char(255),
    Product char(255),
    data char(255),
    Quantity int,
    UnitPrice int
    );

CREATE TABLE SaleProfit (
    Product char(255),
    ProfitRatio int
    );
    
-- sum of compony sales according to the data
Select sum(Quantity * UnitPrice) From saletable;

-- number of customers who buy from company
SELECT count( DISTINCT Customer) FROM saletable;

-- count of sale each product
Select sum(Quantity * UnitPrice) From saletable 
WHere Product = 'p1';
Select sum(Quantity * UnitPrice) From saletable 
WHere Product = 'p1';
Select sum(Quantity * UnitPrice) From saletable 
WHere Product = 'p2';
Select sum(Quantity * UnitPrice) From saletable 
WHere Product = 'p3';
Select sum(Quantity * UnitPrice) From saletable 
WHere Product = 'p4';
Select sum(Quantity * UnitPrice) From saletable 
WHere Product = 'p5';
Select sum(Quantity * UnitPrice) From saletable 
WHere Product = 'p6';

-- customers who buy atleast more than 1500 one time
Select DISTINCT Customer, Quantity,Quantity * UnitPrice From saletable 
WHere Quantity * UnitPrice >= 1500;

-- profit sum and profit sum percentage
select * from saleprofit;
select sum(Quantity * UnitPrice * ProfitRatio / 100) from saleprofit,saletable;

-- creat and import the exel date with sql import wizard
CREATE TABLE companychart (
    ID int,
    ManagerID int,
    name char(255),
    manager char(255)
    );


