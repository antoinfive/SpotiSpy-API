module Api::V1
  class SessionsController < ApplicationController
    BASE_URL = 'https://accounts.spotify.com/authorize/'
    SCOPES = 'user-read-email user-top-read user-library-read'

    def new
      redirect_to spotify_auth_url 
    end 

    def create 
      client = Adapter::SpotifyApi::Client.new(params['code'])
      data = client.fetch_current_user 
      @account = Account.find_or_create_from_spotify(data) 
    end

    private 

    def spotify_auth_url 
      "#{BASE_URL}?client_id=#{ENV['spotify_client_id']}&response_type=code&scope=#{SCOPES}&redirect_uri=http://localhost:3000/auth/callback"
    end
  end
end
