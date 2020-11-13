require_relative '../environment.rb'

class API

    def self.spell_name
        url = "https://www.dnd5eapi.co/api/spells"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        new_response = JSON.parse(response)
        array_of_spells = hash["results"]
        array_of_spells.each do |spells|
            spell_intances = Spells.new
            spell_intances.name = spells["name"]
            spell_intances.url = spells["url"]
        end
    end

    def self.spell_description

    end

end