SELECT Episodes.*
FROM [Simpsons].[dbo].[Episodes]
JOIN [Simpsons].[dbo].[EpisodeWriter] ON Episodes.id = EpisodeWriter.EpisodeId
JOIN [Simpsons].[dbo].[Writers] ON Writers.id = EpisodeWriter.WriterId
WHERE Writers.Name = 'Matt Groening'
GO