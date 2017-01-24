class Track < ApplicationRecord
  belongs_to :album, optional: true
  belongs_to :artist, optional: true

    
  def self.build_from_spotify(data) 
    Track.find_or_create_by(spotify_id: data['id']) do |track| 
      track.name = data['name'] 
      track.spotify_url = data['href'] 
      track.duration = data['duration_ms'] 
      track.disc_number = data['disc_number'] 
    end 
  end
end
