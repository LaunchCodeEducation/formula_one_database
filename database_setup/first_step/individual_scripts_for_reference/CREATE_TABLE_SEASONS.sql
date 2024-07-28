SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[seasons](
        [year] [int] NOT NULL,
        [url] [nvarchar](100) NOT NULL
    ) ON [PRIMARY]
GO