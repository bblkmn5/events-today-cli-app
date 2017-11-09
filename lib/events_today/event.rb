class EventsToday::Event
    attr_accessor :name, :genre, :location, :description, :url

    def self.today
        event_1 = self.new
        event_1.name = "Jewel Theatre Presents"
        event_1.location = "at The Colligan Theater"
        event_1.genre = "Music, Theater, Arts"
        event_1.description = "Blurb about blurbs"
        event_1.url = "http://www.santacruz.com/events"
        
        event_2 = self.new
        event_2.name = "Swing Dance Night at Abbott Square"
        event_2.location = "at Abbott Square"
        event_2.genre = "Music, Dance"
        event_2.description = "Blobs about blobs"
        event_2.url = "http://www.santacruz.com/events"

        [event_1,event_2]
    end
end 



