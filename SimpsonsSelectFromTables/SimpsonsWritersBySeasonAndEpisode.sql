SELECT Writers.*
FROM [Simpsons].[dbo].[Writers]
JOIN [Simpsons].[dbo].[EpisodeWriter] ON Writers.id = EpisodeWriter.WriterId
JOIN [Simpsons].[dbo].[Episodes] ON Episodes.id = EpisodeWriter.EpisodeId
WHERE Episodes.Season = 7 AND Episodes.Episode = 21
GO