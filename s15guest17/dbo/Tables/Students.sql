CREATE TABLE [dbo].[Students] (
    [SessionId] INT      NOT NULL,
    [Grade]     CHAR (2) NULL,
    [PersonId]  INT      NOT NULL,
    CONSTRAINT [XPKStudents] PRIMARY KEY CLUSTERED ([SessionId] ASC, [PersonId] ASC),
    CONSTRAINT [R_11] FOREIGN KEY ([SessionId]) REFERENCES [dbo].[Session] ([SessionId]),
    CONSTRAINT [R_27] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [R_29] FOREIGN KEY ([SessionId]) REFERENCES [dbo].[Session] ([SessionId]),
    CONSTRAINT [R_5] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

