CREATE TABLE [Metadata].[DataSource] (
    [DataSetID]        INT            NOT NULL,
    [SourceDatabaseID] INT            NOT NULL,
    [TableSchema]      NVARCHAR (128) NOT NULL,
    [TableName]        NVARCHAR (128) NOT NULL,
    [CdcFunction]      NVARCHAR (145) NULL,
    CONSTRAINT [PK_DataSource] PRIMARY KEY CLUSTERED ([DataSetID] ASC, [SourceDatabaseID] ASC),
    CONSTRAINT [FK_DataSource_DataSet_DataSetID] FOREIGN KEY ([DataSetID]) REFERENCES [Metadata].[DataSet] ([DataSetID]),
    CONSTRAINT [FK_DataSource_DataWarehouseDatabase] FOREIGN KEY ([SourceDatabaseID]) REFERENCES [Metadata].[DataWarehouseDatabase] ([DatabaseID])
);

