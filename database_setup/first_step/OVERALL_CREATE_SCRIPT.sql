-- MAKE SURE to run this while connected to the new dbo
CREATE DATABASE formula_one
GO

USE formula_one
GO

SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[circuits](
        [circuitId] [int] NOT NULL,
        [circuitRef] [nvarchar](50) NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [location] [nvarchar](50) NOT NULL,
        [country] [nvarchar](50) NOT NULL,
        [lat] [float] NOT NULL,
        [lng] [float] NOT NULL,
        [alt] [smallint] NOT NULL,
        [url] [nvarchar](100) NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[circuits]
ADD
    CONSTRAINT [PK_circuits] PRIMARY KEY CLUSTERED ([circuitId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO

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

SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[drivers](
        [driverId] [int] NOT NULL,
        [driverRef] [nvarchar](50) NOT NULL,
        [number] [nvarchar](50) NOT NULL,
        [code] [nvarchar](50) NOT NULL,
        [forename] [nvarchar](50) NOT NULL,
        [surname] [nvarchar](50) NOT NULL,
        [dob] [date] NULL,
        [nationality] [nvarchar](50) NULL,
        [url] [nvarchar](100) NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[drivers]
ADD
    CONSTRAINT [PK_drivers] PRIMARY KEY CLUSTERED ([driverId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO

SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[lap_times](
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [lap] [int] NOT NULL,
        [position] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [int] NOT NULL
    ) ON [PRIMARY]
GO

SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[pit_stops](
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [stop] [int] NOT NULL,
        [lap] [int] NOT NULL,
        [time] [time](7) NOT NULL,
        [duration] [nvarchar](50) NOT NULL,
        [milliseconds] [int] NOT NULL
    ) ON [PRIMARY]
GO


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

SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[races](
        [raceId] [int] NOT NULL,
        [year] [int] NOT NULL,
        [round] [int] NOT NULL,
        [circuitId] [int] NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [date] [date] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [url] [nvarchar](100) NOT NULL,
        [fp1_date] [nvarchar](50) NOT NULL,
        [fp1_time] [nvarchar](50) NOT NULL,
        [fp2_date] [nvarchar](50) NOT NULL,
        [fp2_time] [nvarchar](50) NOT NULL,
        [fp3_date] [nvarchar](50) NOT NULL,
        [fp3_time] [nvarchar](50) NOT NULL,
        [quali_date] [nvarchar](50) NOT NULL,
        [quali_time] [nvarchar](50) NOT NULL,
        [sprint_date] [nvarchar](50) NOT NULL,
        [sprint_time] [nvarchar](50) NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[races]
ADD
    CONSTRAINT [PK_races] PRIMARY KEY CLUSTERED ([raceId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO

SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[results](
        [resultId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [nvarchar](50) NOT NULL,
        [grid] [int] NOT NULL,
        [position] [nvarchar](50) NULL,
        [positionText] [nvarchar](50) NULL,
        [positionOrder] [int] NOT NULL,
        [points] [float] NOT NULL,
        [laps] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [nvarchar](50) NULL,
        [fastestLap] [nvarchar](100) NULL,
        [rank] [nvarchar](100) NULL,
        [fastestLapTime] [nvarchar](100) NOT NULL,
        [fastestLapSpeed] [nvarchar](100) NULL,
        [statusId] [int] NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[results]
ADD
    CONSTRAINT [PK_results] PRIMARY KEY CLUSTERED ([resultId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO

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

SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[sprint_results](
        [resultId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [int] NOT NULL,
        [grid] [int] NOT NULL,
        [position] [nvarchar](50) NULL,
        [positionText] [nvarchar](50) NULL,
        [positionOrder] [int] NOT NULL,
        [points] [float] NOT NULL,
        [laps] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [nvarchar](50) NULL,
        [fastestLap] [nvarchar](50) NULL,
        [fastestLapTime] [nvarchar](50) NOT NULL,
        [statusId] [int] NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[sprint_results]
ADD
    CONSTRAINT [PK_sprint_results] PRIMARY KEY CLUSTERED ([resultId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO

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
