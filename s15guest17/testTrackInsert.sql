exec AddTrack @description="track1"


BEGIN 
DECLARE @personid int, @levelid int, @classid int

INSERT INTO Person DEFAULT VALUES
set @personid = SCOPE_IDENTITY()

INSERT INTO Level DEFAULT VALUES
set @levelid = SCOPE_IDENTITY()

INSERT INTO Class(Topic, PersonId, LevelId) VALUES ('the test', @personid, @levelid)

set @classid = SCOPE_IDENTITY()

exec AssociateTrackWithClass @classid=@classid, @trackdescription='lol'

SELECT * FROM Class JOIN Track ON Track.TrackId = Class.TrackId
END




