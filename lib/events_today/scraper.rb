class EventsToday::Scraper

doc = Nokogiri::HTML(open("http://www.santacruz.com/events"))

    ("div.event_cards.module-primary.clearfix div.feature.event_card.card-container")

     name = doc.search()
     location = doc.search()
     genre = doc.search()
     url = doc.search(   )   
     
     
end
