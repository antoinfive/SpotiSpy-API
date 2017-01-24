require 'pry'
require 'rest-client'

AUTH_STRING = Base64.strict_encode64("#{ENV['spotify_client_id']}:#{ENV['spotify_client_secret']}")

class Adapter 
  class SpotifyApi 
    class Authorizer
      AUTH_BASE_URL = 'https://accounts.spotify.com'

      def request_authorization 
        url = "#{AUTH_BASE_URL}/api/token" 
        header_hash = {'Authorization' => "Basic #{AUTH_STRING}", "Content-Type" => 'application/x-www-form-urlencoded' }
        payload = {'grant_type' => 'client_credentials' } 

        response = RestClient.post url, payload, header_hash 
        access_token = JSON.parse(response)['access_token']

        access_token
      end 
    end 

    class Client 
      API_BASE_URL = 'https://api.spotify.com/v1'
      attr_reader :access_token

      def initialize
        @authorizer = Adapter::SpotifyApi::Authorizer.new
        @access_token = @authorizer.request_authorization 
      end

      def fetch_item(type, id)
        url = create_fetch_url(type, id) 
        response = RestClient.get url, header_hash 
        JSON.parse(response.body)
      end

      def search_artist(query)
        url = create_search_url(query, 'artist') 
        response = RestClient.get url, header_hash 
        data = JSON.parse(response.body)['artists']
        id = parse_id(data) 

        fetch_item('artists', id) 
      end

      def search_album(query)
        url = create_search_url(query, 'album')
        response = RestClient.get url, header_hash
        data = JSON.parse(response.body)['albums'] 
        id = parse_id(data) 

        fetch_item('albums', id)
      end
      

      def search_track(query)
        url = create_search_url(query, 'track')
        response = RestClient.get url, header_hash 
        data = JSON.parse(response.body)['tracks']
        id = parse_id(data)
      
        fetch_item('tracks', id)
      end

      private 

      def parse_id(data)
       data['items'][0]['id'] 
      end
      
      def create_search_url(query, type)
        URI.escape("#{API_BASE_URL}/search?q=#{query}&type=#{type}") 
      end

      def create_fetch_url(type, id)
        URI.escape("#{API_BASE_URL}/#{type}/#{id}")
      end

      def header_hash 
        {'Authorization' => "Bearer #{access_token}" }
      end
    end

  end
end
