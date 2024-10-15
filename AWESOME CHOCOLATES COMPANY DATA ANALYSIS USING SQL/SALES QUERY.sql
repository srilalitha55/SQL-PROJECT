show tables;

desc sales;

select * from sales;

select SaleDate, Amount, Customers from sales;

select Amount, Customers, GeoId from sales;

select SaleDate, Amount, Boxes, Amount/Boxes from sales;

select SaleDate, Amount, Boxes, Amount/Boxes  'Amount per box' from sales;

select SaleDate, Amount, Boxes, Amount/Boxes as 'Amount per box' from sales;

select * from sales where Amount > 10000;

select * from sales where Amount > 10000 order by Amount;

select * from sales where Amount > 10000 order by Amount desc;

select * from sales where geoid = 'g1' order by PID, Amount desc;

select * from sales where Amount > 10000 and SaleDate >= '2022-01-01';

select SaleDate, Amount from sales where Amount > 10000 and year(SaleDate) = 2022 order by Amount desc;

select * from sales where boxes > 0 and boxes <= 50;

select * from sales where boxes between 0 and 50;

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week' from sales where weekday(SaleDate) = 4;

select SaleDate, Amount, 
		case  	when Amount < 1000 then 'Under 1K'
				when Amount < 5000 then 'Under 5K'
                when Amount < 10000 then 'Under 10K'
		else    '10K or more '
        end as 'Amount Category'
from sales;