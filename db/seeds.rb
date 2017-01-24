$client = Adapter::SpotifyApi::Client.new 

def create_album(query) 
  data = $client.fetch_artist(query)  
  Album.build_from_spotify(data)
end
