require_relative '../environment.rb'

class CLI

    #welcome the user
    def welcome 
        puts "Welcome to Dungeons and Dragons!"
        API.start
        self.beginning #self class
    end

    #have the user to choose to continue with the program or exit. 
    def beginning
        puts "Oh no, you are on your last hit point! Would you like to attack you enemy?"
        puts "Type 'Yes' to continue or any other key to exit the game" 
        user_input = gets.strip.downcase
        if user_input == "y" || user_input == "yes"
            continue
        else
            puts "See Ya!"
        end
    end

    #ask the user if they want to know about the different spells they can use then allow the user to go to different methods for more information
    def continue
        puts "You only have spells left. Would you like to know the different spells you can use?"
        input  = gets.strip.downcase
        if input = "y" || input = "yes"
            spell_name_display
            spell_choice
        else
            "Okay. RIP!"
        end
    end

    #display the different spells for the user
    def spell_name_display
        Spells.all.each.with_index(1) do |name, index|
            puts "#{index}. #{name.name}"
        end
    end

    #have the user input the number corresponding to the spell they want to look at
    def spell_choice
        puts "Enter the spell number you would like to know more about."
        input = gets.strip.to_i 
        index = input - 1
        max_limit = Spells.all.length - 1
        until index.between?(0, max_limit)
            puts "Invalid choice, try again."
            index = gets.strip.to_i - 1
        end
        spell_instance = Spells.all[index]
        puts spell_instance.name
        puts "Below is the url for the information on the spell you selected, enjoy!"
        spell_url(spell_instance)
    end

    #display url for more details on the spell
    def spell_url(name)
        puts name.name
        puts name.url
    end

end