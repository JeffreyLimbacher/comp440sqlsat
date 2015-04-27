CREATE TABLE [dbo].[Event] (
    [EventId]    INT       NOT NULL,
    [Date]       CHAR (18) NULL,
    [LocationId] INT       NOT NULL,
    CONSTRAINT [XPKEvent] PRIMARY KEY CLUSTERED ([EventId] ASC),
    CONSTRAINT [R_33] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId])
);

