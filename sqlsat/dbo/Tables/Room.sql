CREATE TABLE [dbo].[Room] (
    [RoomNumber] CHAR (18) NULL,
    [RoomId]     INT       IDENTITY (1, 1) NOT NULL,
    [LocationId] INT       NOT NULL,
    [Capacity]   CHAR (18) NULL,
    CONSTRAINT [XPKRoom] PRIMARY KEY CLUSTERED ([RoomId] ASC),
    CONSTRAINT [R_32] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId])
);

