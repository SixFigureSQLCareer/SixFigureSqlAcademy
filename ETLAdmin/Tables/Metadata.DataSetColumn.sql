CREATE TABLE [Metadata].[DataSetColumn] (
    [DataSetID]       INT            NOT NULL,
    [ColumnNumber]    INT            NOT NULL,
    [ColumnName]      NVARCHAR (128) NOT NULL,
    [ColumnType]      TINYINT        NULL,
    [DatatypeName]    NVARCHAR (128) NOT NULL,
    [ColumnLength]    INT            NULL,
    [ColumnPrecision] INT            NULL,
    [ColumnScale]     INT            NULL,
    [DataTypeLabel]   AS             ([DataTypeName]+case when [ColumnLength] IS NOT NULL then ('('+CONVERT([nvarchar],[ColumnLength]))+')' when [ColumnPrecision] IS NOT NULL then ('('+CONVERT([nvarchar],[ColumnPrecision]))+case when [ColumnScale] IS NOT NULL then (', '+CONVERT([nvarchar],[ColumnScale]))+')' else ')' end else '' end),
    CONSTRAINT [PK_DataSetColumn] PRIMARY KEY NONCLUSTERED ([DataSetID] ASC, [ColumnName] ASC),
    CONSTRAINT [FK_DataSetColumn_DataSet] FOREIGN KEY ([DataSetID]) REFERENCES [Metadata].[DataSet] ([DataSetID])
);

