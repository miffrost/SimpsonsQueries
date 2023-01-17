SELECT Directors.*
FROM [Simpsons].[dbo].[Directors]
JOIN [Simpsons].[dbo].[EpisodeDirector] ON Directors.id = EpisodeDirector.DirectorId
JOIN [Simpsons].[dbo].[Episodes] ON Episodes.id = EpisodeDirector.EpisodeId
WHERE Episodes.Season = 2 AND Episodes.Episode = 3
GO