USE TableRelationsDB

CREATE TABLE Teachers
(      
	TeacherID INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(30) NOT NULL,
	ManagerID INT REFERENCES Teachers(TeacherID)
)