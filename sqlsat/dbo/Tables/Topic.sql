CREATE TABLE [dbo].[Topic] (
    [TopicId] INT       IDENTITY (1, 1) NOT NULL,
    [Domain]  CHAR (18) NULL,
    CONSTRAINT [XPKTrack] PRIMARY KEY CLUSTERED ([TopicId] ASC)
);

