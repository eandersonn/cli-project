require_relative '../environment.rb'

class Spells

    attr_accessor :name, :url

    @@all = []

    def initialize(name, url)
        @name = name
        @url = url
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        #find name compare to name argument
        @@all.find {|spell| name == spell.name}
    end

end