# class Zoo
#         attr_reader  :address
#         attr_accessor :name
#         @@all = []
        
    
#         def initialize (name,address)
#             @name = name
#             @address = address
#             self.class.all << self
#         end
    
#         def self.all
#             @@all
#         end
        
# end

class Zoo
    attr_reader  :address
    attr_accessor :name
    @@all = []
    def initialize (name,address)
        @name = name
        @address = address
        self.class.all << self
    end
    def self.all
        @@all
    end
    def self.find_by_name (a)
        self.all.select {|zoo| a == zoo.name}
    end
    def all_animals
        Animal.all.select {|a| a.zoo == self}
    end
    def all_animal_species
        self.all_animals.map {|a| a.species}.uniq
    end
    def origins
        self.all_animals.map {|a| a.origin}.uniq
    end
end
    

