select distinct p1.Email
from Person p1 join Person p2
on p1.Email = p2.Email
and p1.Id <> p2.Id; -- != ~=

select Email from
(
    select Email, count(Email) as num
    from Person
    group by Email
) as statistic -- Every derived table must have its own alias
where num > 1;

select Email
from Person
group by Email
having count(Email) > 1; -- having is where for aggregation