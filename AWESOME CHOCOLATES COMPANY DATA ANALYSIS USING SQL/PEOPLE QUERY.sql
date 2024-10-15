select * from people;

select * from people where team = 'Delish' or team = 'Jucies';

select * from people where team in ('Delish','Jucies');

select * from people where Salesperson like 'B%';

select * from people where Salesperson like '%B%';
