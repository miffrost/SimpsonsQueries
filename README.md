# SimpsonsQueries
Kokoelma SQL-kyselyjä Microsoft SQL Serverissä tehtyyn Simpsons-tietokantaan.

# Tietokantataulut

### Episodes

  - id
  - Season (Millä tuotantokaudella episodi on tehty)
  - Episode (Kuinka monen episodi tuotantokaudessa)
  - Name (Episodin nimi)
  - Special (Onko episodi rakenteeltaan poikkeuksellinen, esim. koostuuko useammasta pikkutarinasta kuten Treehouse of Horror-episodit)
  - Date (Milloin julkaistu ensimmäistä kertaa)
  - Votes (Kuinka monta ääntä IMDB-sivulla)
  - AvgRating (IMDB:n laskema keskimääräinen arvosama (0-100))
  
### Writers

  - id
  - Name (Kirjoittajan nimi)
  - DateOfBirth (Kirjoittajan syntymäpäivä)
  - Sex (Kirjoittajan sukupuoli)
  
### Directors

  - id
  - Name (Ohjaajan nimi)
  - DateOfBirth (Ohjaajan syntymäpäivä)
  - Sex (Ohjaajan sukupuoli)

Episodes-taululla on monesta-moneen-suhde sekä Writers-taulun että Directors-taulun suhteen.
Tosin sanoen, yhdellä episodilla voi olla sekä useampi kirjoittaja että useampi ohjaaja, 
ja sekä kirjoittaja että ohjaaja on voinut kirjoittaa tai ohjata useamman episodin.

Näitä suhteita edustaa seuraavat taulut:

### EpisodeWriter
  - EpisodeId (Episodia vastaava id-arvo Episodes-taulussa)
  - WriterId (Kirjoittajaa vastaava id-arvo Writers-taulussa)

### EpisodeDirector
  - EpisodeId (Episodia vastaava id-arvo Episodes-taulussa)
  - DirectorId (Ohjaajaa vastaava id-arvo Directors-taulussa)

# Lähteet

  - Wikipedia
  - IMDB
