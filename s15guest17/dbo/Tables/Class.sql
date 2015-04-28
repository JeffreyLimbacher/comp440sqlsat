CREATE TABLE [dbo].[Class] (
    [ClassId]     INT           IDENTITY (1, 1) NOT NULL,
    [Duration]    CHAR (18)     NULL,
    [Topic]       NVARCHAR(500) NULL,
    [Description] NVARCHAR(MAX)     NULL,
    [LevelId]     INT           NOT NULL,
    [PersonId]    INT           NOT NULL,
    [TrackId] INT NULL, 
    CONSTRAINT [XPKClass] PRIMARY KEY CLUSTERED ([ClassId] ASC),
    CONSTRAINT [R_36] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [R_37] FOREIGN KEY ([LevelId]) REFERENCES [dbo].[Level] ([LevelId]),
    CONSTRAINT [FK_Class_ToTrack] FOREIGN KEY ([TrackId]) REFERENCES [Track]([TrackId])
);

