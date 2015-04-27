CREATE TABLE [dbo].[VendorSession] (
    [SessionId] INT NOT NULL,
    [VendorId]  INT NOT NULL,
    CONSTRAINT [XPKVendorSession] PRIMARY KEY CLUSTERED ([SessionId] ASC, [VendorId] ASC),
    CONSTRAINT [R_43] FOREIGN KEY ([SessionId]) REFERENCES [dbo].[Session] ([SessionId])
);

