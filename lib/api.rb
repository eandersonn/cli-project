require_relative '../environment.rb'

class API

    def self.start
        url = "https://www.dnd5eapi.co/api/spells"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        new_response = JSON.parse(response)
        array_of_spells = new_response["results"]
        array_of_spells.each do |name|
            Spells.new(name["name"], name["url"])
        end
        binding.pry
    end

end