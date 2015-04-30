CREATE TABLE [dbo].[PersonSession] (
    [SessionId] INT      NOT NULL,
    [Grade]     CHAR (2) NULL,
    [PersonId]  INT      NOT NULL,
    [RoleId] INT NOT NULL, 
    CONSTRAINT [XPKStudents] PRIMARY KEY CLUSTERED ([SessionId] ASC, [PersonId] ASC),
    CONSTRAINT [R_11] FOREIGN KEY ([SessionId]) REFERENCES [dbo].[Session] ([SessionId]),
    CONSTRAINT [R_27] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [R_29] FOREIGN KEY ([SessionId]) REFERENCES [dbo].[Session] ([SessionId]),
    CONSTRAINT [R_5] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]), 
    CONSTRAINT [FK_PersonSession_ToRoles] FOREIGN KEY ([RoleId]) REFERENCES [Role]([RoleId])
);

