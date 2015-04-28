
BEGIN
DECLARE @level int
INSERT INTO Level(LevelDescription) VALUES ('hard af')
SELECT @level=LevelId FROM Level WHERE LevelDescription LIKE 'hard af'

INSERT INTO Person(FirstName, LastName) VALUES ('Pauline', 'Nazareno')
DECLARE @teacher int

SELECT @teacher=PersonId FROM Person WHERE FirstName LIKE 'Pauline'

INSERT INTO Class(Topic, Description, PersonId, TrackId, LevelId) VALUES ('Teaching children SQL', 'Learn to teach children SQL', @teacher, 1, @level), ('SQLite is dumb', 'Why SQLite is dumb', @teacher, 1, @level)


END

exec ClassesInTrack 1