require_relative '../environment.rb'

class API

    def self.start
        url = "https://www.dnd5eapi.co/api/spells"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        new_response = JSON.parse(response)
        end
    end

    def self.spell_description

    end

end