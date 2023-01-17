SELECT Episodes.*
FROM [Simpsons].[dbo].[Episodes]
JOIN [Simpsons].[dbo].[EpisodeDirector] ON Episodes.id = EpisodeDirector.EpisodeId
JOIN [Simpsons].[dbo].[Directors] ON Directors.id = EpisodeDirector.DirectorId
WHERE Directors.Name = 'Raymond S. Persi'
GO