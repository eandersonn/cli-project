# cli-project

## Description

In this cli project the objective is to create a CLI and allow the user to grab the data from a web page using an API. 

When the project first runs. It welcomes the user to the game. Then instructs the user to continue with the program or exit the program. After the user inputs what path they would like to go to the program displays a list of spell names. After asking the user to input the number corresponding to the spell they would like to know more about. The program then outputs the spell name and the url of the spell to get the information from. 

## Installation

When approaching my cli project I would first have to create my gem bundler and require the gem in the environment.rb. Then require_relative all the lib rb files in environment.rb to allow the environment.rb to gain access to each of those rb's. I would have to require_relative 'environment.rb' for all the api.rb, cli.rb and the spells.rb. Then add the required_relative './environment.rb' to the bin/start file. For the program to start. 

Setting up the Gemfile, in the Gemfile it should have the url to the gems that you are requiring in your program as well as listing each gem for example...
gem 'pry'
gem 'net-http'
gem 'json'

As for installing the API data copy the url for the API you would like to get the data from and create a URI object to get a full path of the url. We then have to get the data into an object. After change the format of the data because it will be in JSON format. Then change the format of the list of spells into a hash. Lastly for each new spell being created a name and a url will be connected to that new spell.

Create code to interact with the user and then you would have your CLI project. 

## Running the cli-project

When running this project the user should inserts ruby bin/start.

The program will first greet the user with Welcome to Dungeons and Dragons. 

Then the user then decides if they want to continue with the program or exit. 

#have the user to choose to continue with the program or exit. 
    def beginning
        puts "Oh no, you are on your last hit point! Would you like to attack you enemy?"
        puts "Type 'Yes' to continue or 'Exit' to exit the game" 
        user_input = gets.strip.downcase
        if user_input == "y" || user_input == "yes"
            continue
        else
            puts "See Ya!"
        end
    end

The program will output the list of spells that the user can choose from they will 


then be directed to input the spell that they want that corresponds to the number. After the program will output the spells url for the user to look up the information about the spell. 

## License

This project is licensed under the MIT license. For more details see the LICENSE.md file. 