CREATE TABLE [dbo].[Level] (
    [LevelId]          INT       IDENTITY (1, 1) NOT NULL,
    [LevelDescription] CHAR (18) NULL,
    CONSTRAINT [XPKLevel] PRIMARY KEY CLUSTERED ([LevelId] ASC)
);

