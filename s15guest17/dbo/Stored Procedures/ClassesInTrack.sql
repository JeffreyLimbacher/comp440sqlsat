CREATE PROCEDURE [dbo].[ClassesInTrack]
	@trackid int
AS
BEGIN
	SELECT Class.ClassId, Class.Description, Class.Duration, Class.Topic, Person.FirstName, Person.LastName
	FROM Class JOIN Track ON Class.TrackId = Track.TrackId
			   LEFT JOIN Person ON Class.PersonId = Person.PersonId
	WHERE Track.TrackId = @trackid
END
RETURN 0
