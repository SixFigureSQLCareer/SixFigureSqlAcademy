CREATE TABLE [Metadata].[DataDestination] (
    [DataSetID]             INT            NOT NULL,
    [DestinationDatabaseID] INT            NOT NULL,
    [TableSchema]           NVARCHAR (128) NOT NULL,
    [TableName]             NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_DataDestination] PRIMARY KEY CLUSTERED ([DataSetID] ASC, [DestinationDatabaseID] ASC),
    CONSTRAINT [FK_DataDestination_DataSet] FOREIGN KEY ([DataSetID]) REFERENCES [Metadata].[DataSet] ([DataSetID]),
    CONSTRAINT [FK_DataDestination_DataWarehouseDatabase] FOREIGN KEY ([DestinationDatabaseID]) REFERENCES [Metadata].[DataWarehouseDatabase] ([DatabaseID])
);

