CREATE TABLE [Metadata].[DataSourceColumn] (
    [DataSetID]         INT            NOT NULL,
    [SourceDatabaseID]  INT            NOT NULL,
    [DataSetColumnName] NVARCHAR (128) NOT NULL,
    [SourceColumnName]  NVARCHAR (128) NULL,
    [DatatypeLabel]     NVARCHAR (128) NULL,
    [ConversionFormula] VARCHAR (1000) NULL,
    CONSTRAINT [PK_Metadata#DataSourceColumn] PRIMARY KEY CLUSTERED ([DataSetID] ASC, [SourceDatabaseID] ASC, [DataSetColumnName] ASC),
    CONSTRAINT [FK_Metadata#DataSourceColumn_Metadata#DataSetColumn] FOREIGN KEY ([DataSetID], [DataSetColumnName]) REFERENCES [Metadata].[DataSetColumn] ([DataSetID], [ColumnName]),
    CONSTRAINT [FK_Metadata#DataSourceColumn_Metadata#DataSource] FOREIGN KEY ([DataSetID], [SourceDatabaseID]) REFERENCES [Metadata].[DataSource] ([DataSetID], [SourceDatabaseID])
);

