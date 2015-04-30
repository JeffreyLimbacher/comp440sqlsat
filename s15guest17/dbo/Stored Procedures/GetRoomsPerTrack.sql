CREATE PROCEDURE [dbo].[GetRoomsPerTrack]
	@trackid int
AS
BEGIN
	SELECT RoomNumber
	FROM Room
		JOIN Session ON Session.RoomId = Room.RoomId
		JOIN Class ON Class.ClassId = Session.ClassId
		JOIN Track ON Track.TrackId = Class.ClassId


END
RETURN 0
