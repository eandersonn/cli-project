require_relative '../environment.rb'

class CLI

    #welcome the user
    def welcome 
        puts "Welcome to Dungeons and Dragons!"
        API.start
        beginning
    end

    #have the user to choose to continue with the program or exit. 
    def beginning
        puts "Oh no, you are on your last hit point! Would you like to attack you enemy?"
        user_input = gets.strip.downcase
        if user_input == "y" || user_input == "yes"
            continue
        else
            puts "RIP!"
        end
    end

    #ask the user if they want to know about the different spells they can use then allow the user to go to different methods for more information
    def continue
        puts "You only have spells left. Would you like to know the different spells you can use?"
        input  = gets.strip.downcase
        if input = "y" || input = "yes"
            spell_name
            spell_choice
            spell_url
        else
            "Okay. You have died!"
        end
    end

    #display the different spells for the user
    def spell_name
        Spells.all.each.with_index(1) do |spells, index|
            puts "#{index}. #{spells.name}"
        end
    end
    binding pry

    #have the user input the number corresponding to the spell they want to look at
    def spell_choice
        input_2 = gets.strip.to_i - 1
        Spells.all[index]
    end

    #display url for more details on the spell
    def spell_url
        Spells.all do |spells|
            puts "#{spells.url}"
        end
    end

end