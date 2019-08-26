CREATE TABLE [Metadata].[DataTransformation] (
    [DataSetID]                INT            NOT NULL,
    [TransformationWorkflowID] TINYINT        NOT NULL,
    [WorkflowSequence]         INT            NOT NULL,
    [StoredProcedureSchema]    NVARCHAR (128) NOT NULL,
    [StoredProcedureName]      NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_DataTransformation] PRIMARY KEY CLUSTERED ([DataSetID] ASC, [TransformationWorkflowID] ASC, [WorkflowSequence] ASC),
    CONSTRAINT [FK_DataTransformation_DataSet] FOREIGN KEY ([DataSetID]) REFERENCES [Metadata].[DataSet] ([DataSetID]),
    CONSTRAINT [FK_Metadata#DataTransformation_Metadata#TransformationWorkflow] FOREIGN KEY ([TransformationWorkflowID]) REFERENCES [Metadata].[TransformationWorkflow] ([TransformationWorkflowID])
);

