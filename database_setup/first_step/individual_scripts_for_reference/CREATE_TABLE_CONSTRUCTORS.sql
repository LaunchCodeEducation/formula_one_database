SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[constructors](
        [constructorId] [int] NOT NULL,
        [constructorRef] [nvarchar](50) NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [nationality] [nvarchar](50) NOT NULL,
        [url] [nvarchar](100) NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[constructors]
ADD
    CONSTRAINT [PK_constructors] PRIMARY KEY CLUSTERED ([constructorId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO