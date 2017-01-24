class Artist < ApplicationRecord
  has_many :tracks 
  has_many :albums 

  def self.build_from_spotify(data) 
    Artist.find_or_create_by(spotify_id: data['id']) do |artist| 
      artist.name = data['name']
      artist.followers = data['followers']['total'] 
      artist.spotify_url = data['href'] 
    end 
  end
end
