CREATE TABLE [dbo].[Person] (
    [PersonId]   INT       IDENTITY (1, 1) NOT NULL,
    [FirstName]  CHAR (18) NULL,
    [LastName]   CHAR (18) NULL,
    [LocationId] INT       NULL,
    CONSTRAINT [XPKPerson] PRIMARY KEY CLUSTERED ([PersonId] ASC),
    CONSTRAINT [R_54] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId])
);

