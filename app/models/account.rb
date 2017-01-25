class Account < ApplicationRecord 
  
  def self.find_or_create_from_spotify(data) 
    Account.find_or_create_by(email: data['email']) do |user| 
      user.username = data['display_name']
    end  
  end
end

#ADD EMAIL scope to request, ADD SPOTIFY URL TO account
