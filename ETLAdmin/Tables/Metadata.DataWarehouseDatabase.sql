CREATE TABLE [Metadata].[DataWarehouseDatabase] (
    [DatabaseID]     INT            NOT NULL,
    [DatabaseName]   NVARCHAR (128) NOT NULL,
    [DatabaseTypeID] TINYINT        NOT NULL,
    CONSTRAINT [PK_Metadata#DataWarehouseDatabase] PRIMARY KEY CLUSTERED ([DatabaseID] ASC),
    CONSTRAINT [FK_Metadata#DataWarehouseDatabase_Metadata#DatabaseType] FOREIGN KEY ([DatabaseTypeID]) REFERENCES [Metadata].[DatabaseType] ([DatabaseTypeID]),
    CONSTRAINT [UQ_Metadata#DataWarehouseDatabase_DatabaseName] UNIQUE NONCLUSTERED ([DatabaseName] ASC)
);

