require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table
  rows = db.execute "SELECT COUNT(*) FROM #{table_name};"#
end
puts number_of_rows(db, "Track")

def sorted_artists(db)
  #TODO: return array of artist names sorted alphabetically
  yo = db.execute "SELECT Name FROM Artist ORDER BY NAME;"
end
#p sorted_artists(db)


def love_tracks(db)
  #TODO: return array of love songs
  love = db.execute "SELECT Name FROM Track WHERE Name LIKE '%love%';"
  #SELECT * FROM table WHERE Contains(Column, "test")>0
end
#puts love_tracks(db)

def long_tracks(db, min_length)
  #TODO: return tracks with duration > min_length minutes
  milli_length = 60000*min_length
  long_tck = db.execute "SELECT Name FROM Track WHERE Milliseconds>#{milli_length};"
end
#puts long_tracks(db,45)

