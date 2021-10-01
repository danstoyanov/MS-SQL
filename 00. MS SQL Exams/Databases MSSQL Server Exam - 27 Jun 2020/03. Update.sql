SELECT * FROM Mechanics -- ID 3
SELECT * FROM Jobs WHERE MechanicId = 3

SELECT COUNT(*)
FROM Jobs
WHERE [Status] = 'Pending'

UPDATE Jobs
SET [Status] = 'In Progress'
WHERE [Status] = 'Pending'

UPDATE Jobs
SET [Status] = 'In Progress'
WHERE MechanicId = 3 AND [Status] = 'Pending'
