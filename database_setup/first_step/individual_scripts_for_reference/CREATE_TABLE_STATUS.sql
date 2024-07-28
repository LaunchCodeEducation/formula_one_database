SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[status](
        [statusId] [int] NOT NULL,
        [status] [nvarchar](50) NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[status]
ADD
    CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED ([statusId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO