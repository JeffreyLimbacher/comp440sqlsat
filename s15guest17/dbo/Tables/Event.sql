CREATE TABLE [dbo].[Event] (
    [EventId]    INT       NOT NULL IDENTITY,
    [StartDate]       DATE NOT NULL,
    [LocationId] INT       NULL,
    [EndDate] DATE NOT NULL, 
    CONSTRAINT [XPKEvent] PRIMARY KEY CLUSTERED ([EventId] ASC),
    CONSTRAINT [R_33] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId])
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The location of the event. Allows nulls for TBD locations',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Event',
    @level2type = N'COLUMN',
    @level2name = N'LocationId'