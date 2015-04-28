CREATE PROCEDURE [dbo].[AddSession]
	@starttime datetime = 0,
	@eventid int,
	@roomid int,
	@classid int
AS
BEGIN
	SET NOCOUNT ON
	BEGIN TRY
		INSERT INTO Session(StartTime, EventId, RoomId, ClassId) VALUES (@starttime, @eventid, @roomid, @classid)
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000);
			DECLARE @ErrorSeverity INT;
			DECLARE @ErrorState INT;

			SELECT @ErrorMessage = ERROR_MESSAGE(),
				   @ErrorSeverity = ERROR_SEVERITY(),
				   @ErrorState = ERROR_STATE();

			-- Use RAISERROR inside the CATCH block to return 
			-- error information about the original error that 
			-- caused execution to jump to the CATCH block.
			RAISERROR (@ErrorMessage, -- Message text.
					   @ErrorSeverity, -- Severity.
					   @ErrorState -- State.
				   );
	END CATCH
END
RETURN 0
