require_relative '../environment.rb'

require 'pry'
class API

    def self.start
        url = "https://www.dnd5eapi.co/api/spells"
        uri = URI(url)
        hash = Net::HTTP.get(uri)
        new_hash = JSON.parse(hash)
        array_of_spells = hash["results"]
        array_of_spells.each do |name|
            binding.pry
        end
    end

    def self.spell_description

    end

end