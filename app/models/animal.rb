class Animal
    attr_reader :name, :species, :origin, :zoo
    @@all = []

    def initialize (name,species)
        @name = name
        @species = species
        self.class.all << self
    end

    def self.all
        @@all
    end

end
