CREATE TABLE [Framework].[OrchestrationDataSet] (
    [OrchestrationID] INT NOT NULL,
    [DataSetID]       INT NOT NULL,
    CONSTRAINT [PK_Framework#OrchestrationDataSet] PRIMARY KEY CLUSTERED ([OrchestrationID] ASC, [DataSetID] ASC),
    CONSTRAINT [FK_Framework#OrchestrationDataSet_Framework#Orchestration] FOREIGN KEY ([OrchestrationID]) REFERENCES [Framework].[Orchestration] ([OrchestrationID]),
    CONSTRAINT [FK_Framework#OrchestrationDataSet_Metadata#DataSet] FOREIGN KEY ([DataSetID]) REFERENCES [Metadata].[DataSet] ([DataSetID])
);

