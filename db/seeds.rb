$client = Adapter::SpotifyApi::Client.new

def create_track(query)
  data = $client.search_track(query)
  Track.build_from_spotify(data)
end

ARTIST = ["James Blake", "The Weeknd", "Drake", "Rihanna", "Ed Sheeran", "The Rolling Stones", "Daft Punk", "The xx", "Sia", "Alicia Keys", "Pharrell Williams", "James Blake", "The Beatles", "Radiohead", "Diplo", "Kanye West", "Beyoncé", "Nora En Pure", "The Chainsmokers", "DJ Snake", "David Bowie", "Bruce Springsteen", "Big Sean", "J. Cole", "Eric Clapton", "Marvin Gaye", "Jason Derulo", "Disclosure", "Kendrick Lamar", "Amy Winehouse", "Kygo", "Nas", "SeeB", "Sean Paul", "Coldplay", "Bonobo", "Massive Attack", "JAY Z", "MØ", "Snoop Dogg", "KAYTRANADA", "Rae Sremmurd", "Zara Larsson", "Zhu", "Ty Dolla $ign", "Sam Feldt", "Bon Iver", "Bastille", "Tove Lo", "Bakermat", "Calvin Harris", "Vance Joy", "Michael Jackson", "Cheat Codes", "Beck", "Pink Floyd", "Shakira", "Ariana Grande", "Bruno Mars", "Robin Schulz", "Jasmine Thompson", "Flume", "Raye", "Jess Glynne", "Shaggy", "The Cure", "Sam Smith", "Lana Del Rey", "Norah Jones", "Justin Bieber", "Tame Impala", "SOHN", "Nina Simone", "Lupe Fiasco", "Neil Young", "Akon", "Years & Years", "Imagine Dragons", "John Legend", "Jonas Blue", "Halsey", "Caribou", "Pearl Jam", "Tiësto", "Martin Garrix", "Nile Rodgers", "Dire Straits", "U2", "Solange", "Matoma", "Usher", "Parson James", "Glass Animals", "Major Lazer", "R3hab", "Childish Gambino", "Stevie Wonder", "Birdy", "The Alternate Routes", "Jimi Hendrix", "Maroon 5"]
i = 0

TRACKS = ["Shape of You", "Let It Happen", "Chantaje", "Gooey", "Let It Go", "Stole the Show", "Technicolour Beat", "Closer", "Can't Feel My Face", "Photograph", "Thinking Out Loud", "Don't Speak", "Manicomio", "Si Me Dices Que Si (feat. Nicky Jam)", "I'm Not Part Of Me", "Multi-Love", "Can't Do Without You", "Love Is A Losing Game", "This Is What You Came For", "Go Fuck Yourself", "El Amante", "Should Have Known Better", "Coming Home", "Nervous (The Ooh Song) - Mark McCabe Remix", "Sola (Remix) [feat. Daddy Yankee, Wisin, Farruko, Zion & Lennox]", "Rooting For You", "Surface", "Rockabye (feat. Sean Paul & Anne-Marie)", "Torn", "Despacito", "Sex", "Lovefool - Radio Edit", "Feel The Love - Sam Feldt Edit", "Bitter Sweet Symphony", "We The People....", "All The Small Things", "Happy Together", "By Your Side", "Hunger Of The Pine", "Firestone", "Retrograde", "Hey Baby - Dimitri Vegas & Like Mike Vs. Diplo", "Mmm Mmm Mmm Mmm", "All of Me", "Heatwave (feat. Akon)", "Wakin on a Pretty Day", "Imagine - 2010 - Remaster", "Sunset Lover", "Wicked Game", "I Love You Always Forever", "Seven Nation Army", "Put a Light On", "I Found", "Paradise Circus", "Devastated", "Dun Talkin' (feat. Abra Cadabra)", "Romantic - NOTD Remix", "The Void Between", "Be Here", "Kiss the Sky", "I Try", "Lovesong", "Riptide", "Stronger Than Me", "Let's Get It On", "Without You", "No Money", "Little Numbers", "Left Hand Free", "Modern Jesus", "In The Night", "Let Her Go", "Daniel", "Barbie Girl", "Two Weeks", "Bulletproof", "Cuando Te Miro", "Castle on the Hill", "Cranes in the Sky", "Thinking About You", "Vowels", "Half The World Away", "I Would Like", "Te Quiero Pa´Mi", "Good Times", "Crossfire", "Kids", "Tubthumping", "Drive", "Keep the Streets Empty For Me", "Stitches", "No One Knows", "Dog Days Are Over", "Glory Box", "Holy Shit", "Don't Worry (feat. Ray Dalton) - Radio Version", "Say What You Want", "Cold Cold Man", "Sober", "Team"]




TRACKS.each do |track|
  puts i
  create_track(track)
  i += 1
end
