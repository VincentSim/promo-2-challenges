require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute"SELECT Track.Name, Album.Title, Artist.Name FROM  Track INNER JOIN Album, Artist ON Artist.ArtistID=Album.ArtistID AND Track.AlbumID=Album.AlbumID LIMIT 0,5 "
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  db.execute"SELECT COUNT(Track.Name), AVG(Track.Milliseconds) FROM Track INNER JOIN Genre WHERE Genre.GenreID=#{category}"
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists

  db.execute"SELECT Artist.Name, Count(Track.Name) AS TOP5 FROM Artist JOIN Album ON Album.ArtistID == Artist.ArtistID
                                            JOIN Track ON Track.AlbumID == Album.AlbumID
                                            JOIN Genre ON Genre.GenreID == Track.GenreID
                                            WHERE Genre.Name == 'Rock'
                                            GROUP BY Artist.Name
                                            ORDER BY TOP5 DESC
                                            LIMIT 0,5;"
end

#SELECT Album.Name from Album INNER JOIN Track WHERE Album.AlbumID=Track.AlbumID and Track.GenreID = 1
