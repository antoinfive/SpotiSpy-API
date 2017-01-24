class Album < ApplicationRecord
  belongs_to :artist, optional: true

  def self.build_from_spotify(data)
    Album.find_or_create_by(spotify_id: data['id']) do |album|
      album.spotify_url = data['external_urls']['spotify']
      album.name = data['name'] 
      album.release_date = data['release_date']
      album.image_url = data['images'].first['url'] 
    end
  end
end
