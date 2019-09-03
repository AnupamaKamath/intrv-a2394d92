select a.name as "Name",
 age as "Age",
 round(c.average_shortstops,2) as "Average Age of all Shortstops",
 round(b.infielder_age,2) as "Average Age of Infielder Players" ,
 round(avg(older),2) as "Average Age of Older Players",
 round(avg(younger),2) as "Average Age of Younger Players"
 from (
select a.name, a.age,b.age as younger,c.age as older,a.position  from test1 a  left join test1 b 
on a.age>b.age 
and trim(b.position) ='Shortstop'
and  trim(a.position) ='Shortstop'
left join test1 c
on a.age<c.age 
and trim(c.position) ='Shortstop'
and  trim(a.position) ='Shortstop'
 where trim(a.position) ='Shortstop')a , ( select avg(age) as infielder_age from  test1 where 
trim(position) in ('First Baseman','Second Baseman','Third Baseman','Shortstop')) b , ( select avg(age) as average_shortstops from  test1 where 
trim(position) ='Shortstop')c
group by a.name;