select FirstName, LastName, City, State
from Person as p
left join Address as a
on p.PersonId = a.PersonId -- using where to filter the records will fail if there is no address information for a person
