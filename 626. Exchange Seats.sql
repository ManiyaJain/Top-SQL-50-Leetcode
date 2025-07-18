Select Case
  When id = (Select MAX(id) FROM Seat) AND MOD(id, 2) = 1 Then id
  When MOD(id, 2) = 1 Then id + 1 Else id - 1
END AS id, student
From Seat
Order by id
