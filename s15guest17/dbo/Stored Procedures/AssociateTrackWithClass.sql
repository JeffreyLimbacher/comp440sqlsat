CREATE PROCEDURE [dbo].[AssociateTrackWithClass]
	@classid int,
	@trackdescription nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON
	BEGIN TRY
		DECLARE @TheTrackId int
		IF NOT EXISTS(SELECT TrackId FROM Track WHERE Description LIKE @trackdescription)
		BEGIN
			exec AddTrack @description=@trackdescription
		END
		SELECT @TheTrackId = TrackId FROM Track WHERE Description LIKE @trackdescription
		UPDATE Class
		SET TrackId = @TheTrackId
		WHERE ClassId=@classid
		RETURN 0
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
