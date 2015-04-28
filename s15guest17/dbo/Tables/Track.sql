CREATE TABLE [dbo].[Track]
(
	[TrackId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Description] NVARCHAR(50) NOT NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The description for the level, e.g. beginner, intermediate, etc.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Track',
    @level2type = N'COLUMN',
    @level2name = N'Description'
GO


CREATE UNIQUE INDEX [IX_Track_Description] ON [dbo].[Track] ([Description])
