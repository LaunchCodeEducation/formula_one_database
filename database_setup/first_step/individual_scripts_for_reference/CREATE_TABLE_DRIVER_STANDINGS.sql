SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[driver_standings](
        [driverStandingsId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [points] [float] NOT NULL,
        [position] [int] NOT NULL,
        [positionText] [nvarchar](50) NOT NULL,
        [wins] [int] NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[driver_standings]
ADD
    CONSTRAINT [PK_driver_standings] PRIMARY KEY CLUSTERED ([driverStandingsId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO