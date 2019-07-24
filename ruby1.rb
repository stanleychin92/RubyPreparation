movies = {:interstellar => 1984, :happydays => 1990}
ouch = movies.each!{|movie, year| puts year};
puts ouch