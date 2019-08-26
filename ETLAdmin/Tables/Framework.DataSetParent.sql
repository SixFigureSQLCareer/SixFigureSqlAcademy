CREATE TABLE [Framework].[DataSetParent] (
    [ParentDataSetID] INT NOT NULL,
    [ChildDataSetID]  INT NOT NULL,
    CONSTRAINT [PK_DataSetParent] PRIMARY KEY CLUSTERED ([ParentDataSetID] ASC, [ChildDataSetID] ASC),
    CONSTRAINT [FK_DataSetParent_DataSet_ParentDataSetID] FOREIGN KEY ([ParentDataSetID]) REFERENCES [Metadata].[DataSet] ([DataSetID]),
    CONSTRAINT [FK_DataSetParent_DataSetParent_ChildDataSetID] FOREIGN KEY ([ChildDataSetID]) REFERENCES [Metadata].[DataSet] ([DataSetID])
);

