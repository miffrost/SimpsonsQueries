IF EXISTS(SELECT * FROM  sys.tables WHERE SCHEMA_NAME(schema_id) LIKE 'dbo' AND name like 'Episodes')
	DROP TABLE [dbo].[Episodes]
GO

IF EXISTS(SELECT * FROM  sys.tables WHERE SCHEMA_NAME(schema_id) LIKE 'dbo' AND name like 'Writers')
	DROP TABLE [dbo].[Writers]
GO

IF EXISTS(SELECT * FROM  sys.tables WHERE SCHEMA_NAME(schema_id) LIKE 'dbo' AND name like 'Directors')
	DROP TABLE [dbo].[Directors]
GO

IF EXISTS(SELECT * FROM  sys.tables WHERE SCHEMA_NAME(schema_id) LIKE 'dbo' AND name like 'EpisodeDirector')
	DROP TABLE [dbo].[EpisodeDirector]
GO

IF EXISTS(SELECT * FROM  sys.tables WHERE SCHEMA_NAME(schema_id) LIKE 'dbo' AND name like 'EpisodeWriter')
	DROP TABLE [dbo].[EpisodeWriter]
GO