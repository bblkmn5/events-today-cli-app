go to events, find the featured events
     extract properties
    instantiate an event
     events = []

         event_1 = self.new
         event_1.name = "Hard Working Americans"
         event_1.location = "at Rio Theatre"
         event_1.genre = "Music"
         event_1.url = 
         "doc.search('h3 a').attr('href').text"
        
         event_2 = self.new
         event_2.name = "Honky Tonk Night at the Blue Lounge"
         event_2.location = "at The Blue Lounge"
         event_2.genre = "Music, Arts, Happy Hour"
         event_2.url = "http://www.santacruz.com/events"

     doc = Nokogiri::HTML(open("http://www.santacruz.com/events"))
     name = doc.search(
     location = doc.search(
     url = doc.search(        