SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[constructor_standings](
        [constructorStandingsId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [points] [float] NOT NULL,
        [position] [int] NOT NULL,
        [positionText] [nvarchar](50) NULL,
        [wins] [int] NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[constructor_standings]
ADD
    CONSTRAINT [PK_constructor_standings] PRIMARY KEY CLUSTERED ([constructorStandingsId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO