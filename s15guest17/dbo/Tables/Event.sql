CREATE TABLE [dbo].[Event] (
    [EventId]    INT       NOT NULL,
    [StartDate]       DATE NOT NULL,
    [LocationId] INT       NOT NULL,
    [EndDate] DATE NOT NULL, 
    CONSTRAINT [XPKEvent] PRIMARY KEY CLUSTERED ([EventId] ASC),
    CONSTRAINT [R_33] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId])
);

