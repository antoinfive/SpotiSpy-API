class Account < ApplicationRecord 
  
  def self.find_or_create_from_spotify(data)
    # binding.pry
    Account.find_or_create_by(username: data['display_name']) do |user| 
    end  
  end
end

#ADD EMAIL scope to request, ADD SPOTIFY URL TO account
