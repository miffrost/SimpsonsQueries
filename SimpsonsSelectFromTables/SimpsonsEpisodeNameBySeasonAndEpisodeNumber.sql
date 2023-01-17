SELECT Episodes.Name,Episodes.Date,Episodes.Votes,Episodes.AvgRating
FROM [Simpsons].[dbo].[Episodes]
WHERE Episodes.Season = 1 AND Episodes.Episode = 12
GO