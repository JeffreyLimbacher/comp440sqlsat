CREATE TABLE [dbo].[Organizer] (
    [PersonId] INT NOT NULL,
    [EventId]  INT NOT NULL,
    CONSTRAINT [XPKOrganizer] PRIMARY KEY CLUSTERED ([PersonId] ASC, [EventId] ASC),
    CONSTRAINT [R_41] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [R_42] FOREIGN KEY ([EventId]) REFERENCES [dbo].[Event] ([EventId])
);

