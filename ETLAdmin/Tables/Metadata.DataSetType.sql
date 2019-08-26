CREATE TABLE [Metadata].[DataSetType] (
    [DataSetTypeID]          TINYINT      NOT NULL,
    [DataSetTypeCode]        CHAR (3)     NOT NULL,
    [DataSetTypeDescription] VARCHAR (50) NULL,
    CONSTRAINT [PK_Metadata#DataSetType] PRIMARY KEY CLUSTERED ([DataSetTypeID] ASC)
);

