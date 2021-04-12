class Show < ApplicationRecord
    has_many :user_shows 
    has_many :users, through: :user_shows 
    validates :name, presence: true 
    
    def self.get_data
        response = RestClient.get("http://api.tvmaze.com/shows")
        shows = JSON.parse(response)
        
        shows.each do |s|
            self.create(name: s["name"], genre: s["genres"].first, status: s["status"], premiered: s["premiered"], image: s["image"]["medium"])
        end
    end

end
