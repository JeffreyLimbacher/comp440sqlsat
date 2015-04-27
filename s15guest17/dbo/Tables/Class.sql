CREATE TABLE [dbo].[Class] (
    [ClassId]     INT           IDENTITY (1, 1) NOT NULL,
    [Duration]    CHAR (18)     NULL,
    [Title]       VARCHAR (500) NULL,
    [Description] CHAR (18)     NULL,
    [LevelId]     INT           NOT NULL,
    [TrackId]     INT           NULL,
    [PersonId]    INT           NOT NULL,
    CONSTRAINT [XPKClass] PRIMARY KEY CLUSTERED ([ClassId] ASC),
    CONSTRAINT [R_36] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [R_37] FOREIGN KEY ([LevelId]) REFERENCES [dbo].[Level] ([LevelId]),
    CONSTRAINT [R_38] FOREIGN KEY ([TrackId]) REFERENCES [dbo].[Topic] ([TopicId])
);

