SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[qualifying](
        [qualifyId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [int] NOT NULL,
        [position] [int] NOT NULL,
        [q1] [nvarchar](50) NOT NULL,
        [q2] [nvarchar](50) NULL,
        [q3] [nvarchar](50) NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[qualifying]
ADD
    CONSTRAINT [PK_qualifying] PRIMARY KEY CLUSTERED ([qualifyId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO