select name as "Name",
team as "Team",
position as "Position",
height as "Height",
weight as "Weight",
age as "Age",
c.address2 as "Address1",
c.address3 as "Address2"
 from(select a.*,b.* from test1 a
left join team_desc b
 on trim(a.team)= trim(b.name)
 ) a
 left join test2 c
 on trim(a.description)=trim(c.teamname) ;