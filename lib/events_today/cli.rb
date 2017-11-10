class EventsToday::CLI
    def call
        EventsToday::Scraper.new
        list
        start
    end 

    def list
        puts ""
        puts "------Events Today in Santa Cruz, CA------"
        puts ""
        EventsToday::Event.all.each.with_index(1) do |event, i|
            puts "#{i}. #{event.name} - #{event.location} - #{event.genre}"
        puts ""
        end
    end 

    def start
        input = nil
        while input != "exit"
            puts "_____________________________________________________________________"
            puts "Please type the number of the event you wish to attend for more info"
            puts "Type 'list' to see the events again"
            puts "Type 'exit' to exit the program"
            puts ""
            input = gets.strip
            if input == "list"
                list
            elsif input.to_i > 0 && input.to_i < 7 
                more_info(input)
            elsif input != "exit"
                puts ""
                puts "Hmm..."
                puts "I am having trouble figuring out what you want!"
            end
        end 
        puts ""
        puts "Have a great day!"
    end     

    def more_info(input)
        input = input.to_i-1
        puts ""
        puts "Great Choice!"
        puts ""
        puts "Event: #{EventsToday::Event.all[input].name}"
        puts "Genre: #{EventsToday::Event.all[input].genre}"
        puts "Location: #{EventsToday::Event.all[input].location}"
        puts ""
        puts "Description: #{EventsToday::Event.all[input].description}"
        puts ""
        puts "For more information, visit: #{EventsToday::Event.all[input].url}"
    end 
end 