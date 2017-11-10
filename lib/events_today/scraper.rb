class EventsToday::Scraper

    def initialize
        doc = Nokogiri::HTML(open("http://www.santacruz.com/events/"))
        scrape_events(doc)
    end

    def scrape_events(doc)
        name = nil
        location = nil
        genre = nil
        description = nil
        url = nil

        doc.css("div.event_cards.module-primary.clearfix div.feature.event_card.card-container").each do |event| 
            name = event.css("h3 a").attr("title").text
            genre = event.css("div.card-type a").text
            location = event.css("h5").text
            description = event.css("p").text
            url = "http://www.santacruz" + event.at_css("h3 a").attr("href")
            EventsToday::Event.new(name,genre,location,description,url)
        end
    end
end
