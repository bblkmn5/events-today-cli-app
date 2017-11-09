class EventsToday::CLI
    def call
        list
        start
    end 

    def list
        puts ""
        puts "------Events Today in Santa Cruz, CA------"
        puts ""
        puts "1. Jewel Theatre Presents - at The Colligan Theater - Music, Theater, Arts"
        puts "2. Swing Dance Night at Abbott Square - at Abbott Square - Music, Dance"
        puts ""
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
        puts "Event: Name"
        puts "Genre: Genre"
        puts "Location: location"
        puts ""
        puts "Description: Description"
        puts ""
        puts "For more information, visit: event URL"
    end 
end 