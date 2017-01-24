module Api::V1
  class SessionsController < ApplicationController 
    BASE_URL = 'https://accounts.spotify.com/authorize/'    

    def new 
      redirect_to "#{BASE_URL}?client_id=#{ENV['spotify_client_id']}&response_type=code&redirect_uri=localhost:3000/auth/callback" 
    end 

    def create 
      binding.pry 
    end
  end
end
