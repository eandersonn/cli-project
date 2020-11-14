require_relative '../environment.rb'

class API

    def self.start
        url = "https://www.dnd5eapi.co/api/spells"
        uri = URI(url)
        hash = Net::HTTP.get(uri)
        new_hash = JSON.parse(hash)
        array_of_spells = new_hash["results"]
        binding.pry
        array_of_spells.each do |name|
            Spell.new(name["name"], name["url"])
            binding.pry
        end
    end

    def self.spell_description

    end

end