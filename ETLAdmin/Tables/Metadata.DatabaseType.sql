CREATE TABLE [Metadata].[DatabaseType] (
    [DatabaseTypeID]          TINYINT      NOT NULL,
    [DatabaseTypeDescription] VARCHAR (50) NULL,
    CONSTRAINT [PK_Metadata#DatabaseType] PRIMARY KEY CLUSTERED ([DatabaseTypeID] ASC)
);

