class EventsToday::Event
    attr_accessor :name, :genre, :location, :description, :url

     @@all = []
    
    def initialize(name, genre, location, description, url)
        @name = name
        @genre = genre
        @location = location
        @description = description
        @url = url
        @@all << self
        end

    def self.all
        @@all = @@all[0..5]
    end
end 



