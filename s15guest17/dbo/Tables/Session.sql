CREATE TABLE [dbo].[Session] (
    [StartTime] DATETIME NOT NULL,
    [SessionId] INT       IDENTITY (1, 1) NOT NULL,
    [ClassId]   INT       NOT NULL,
    [RoomId]    INT       NOT NULL,
    [EventId]   INT       NOT NULL,
    CONSTRAINT [XPKSession] PRIMARY KEY CLUSTERED ([SessionId] ASC),
    CONSTRAINT [R_30] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId]),
    CONSTRAINT [R_31] FOREIGN KEY ([RoomId]) REFERENCES [dbo].[Room] ([RoomId]),
    CONSTRAINT [R_34] FOREIGN KEY ([EventId]) REFERENCES [dbo].[Event] ([EventId])
);

