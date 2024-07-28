SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[constructor_results](
        [constructorResultsId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [points] [float] NOT NULL,
        [status] [nvarchar](50) NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[constructor_results]
ADD
    CONSTRAINT [PK_constructor_results] PRIMARY KEY CLUSTERED ([constructorResultsId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO