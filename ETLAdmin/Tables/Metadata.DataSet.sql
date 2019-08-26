CREATE TABLE [Metadata].[DataSet] (
    [DataSetID]          INT           IDENTITY (1, 1) NOT NULL,
    [DataSetName]        VARCHAR (50)  NOT NULL,
    [DataSetDescription] VARCHAR (100) NULL,
    [DataSetTypeID]      TINYINT       NOT NULL,
    CONSTRAINT [PK_DataSet] PRIMARY KEY CLUSTERED ([DataSetID] ASC),
    CONSTRAINT [FK_Metadata#DataSet_Metadata#DataSetType] FOREIGN KEY ([DataSetTypeID]) REFERENCES [Metadata].[DataSetType] ([DataSetTypeID])
);

