CREATE TABLE [dbo].[Topic] (
    [TopicId] INT       IDENTITY (1, 1) NOT NULL,
    [Domain]  CHAR (18) NULL,
    [TrackId] INT NOT NULL, 
    CONSTRAINT [XPKTrack] PRIMARY KEY CLUSTERED ([TopicId] ASC), 
    CONSTRAINT [FK_Topic_ToTable] FOREIGN KEY ([TrackId]) REFERENCES [Track]([TrackId])
);

