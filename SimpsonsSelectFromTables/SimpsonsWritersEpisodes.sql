SELECT 
Writers.Name,
CountE.NumberOfEpisodes,
FirstE.FirstEpisodeDate,
LastE.LastEpisodeDate,
BestE.HighScore,
WorstE.LowScore,
AverageE.AvgScore
FROM 
[Simpsons].[dbo].[Writers]
JOIN
(SELECT EpisodeWriter.WriterId, COUNT(Episodes.id) AS NumberOfEpisodes FROM [Simpsons].[dbo].[Episodes] JOIN [Simpsons].[dbo].[EpisodeWriter] ON Episodes.id = EpisodeWriter.EpisodeId GROUP BY WriterId) 
CountE ON Writers.id = CountE.WriterId
JOIN
(SELECT EpisodeWriter.WriterId, MIN(Episodes.Date) AS FirstEpisodeDate FROM [Simpsons].[dbo].[Episodes] JOIN [Simpsons].[dbo].[EpisodeWriter] ON Episodes.id = EpisodeWriter.EpisodeId GROUP BY WriterId) 
FirstE ON Writers.id = FirstE.WriterId
JOIN
(SELECT EpisodeWriter.WriterId, MAX(Episodes.Date) AS LastEpisodeDate FROM [Simpsons].[dbo].[Episodes] JOIN [Simpsons].[dbo].[EpisodeWriter] ON Episodes.id = EpisodeWriter.EpisodeId GROUP BY WriterId) 
LastE ON Writers.id = LastE.WriterId
JOIN
(SELECT EpisodeWriter.WriterId, MAX(Episodes.AvgRating) AS HighScore FROM [Simpsons].[dbo].[Episodes] JOIN [Simpsons].[dbo].[EpisodeWriter] ON Episodes.id = EpisodeWriter.EpisodeId GROUP BY WriterId) 
BestE ON Writers.id = BestE.WriterId
JOIN
(SELECT EpisodeWriter.WriterId, MIN(Episodes.AvgRating) AS LowScore FROM [Simpsons].[dbo].[Episodes] JOIN [Simpsons].[dbo].[EpisodeWriter] ON Episodes.id = EpisodeWriter.EpisodeId GROUP BY WriterId) 
WorstE ON Writers.id = WorstE.WriterId
JOIN
(SELECT EpisodeWriter.WriterId, AVG(Episodes.AvgRating) AS AvgScore FROM [Simpsons].[dbo].[Episodes] JOIN [Simpsons].[dbo].[EpisodeWriter] ON Episodes.id = EpisodeWriter.EpisodeId GROUP BY WriterId) 
AverageE ON Writers.id = AverageE.WriterId
ORDER BY NumberOfEpisodes DESC
GO
