# require_relative 'zoo'
# require_relative 'origin'
# class Animal
#     attr_accessor :name, :species, :origin, :zoo
#     @@all = []

#     def initialize (name,species, origin, zoo)
#         @name = name
#         @species = species
#         self.class.all << self
#         @origin = origin
#         @zoo = zoo
#     end
    
#     # def zoo
#     #     return self.zoo
#     # end

#     # def origin
#     #     return self.origin
#     # end

#     def self.all
#         @@all
#     end

# end

class Animal
    attr_reader :name, :species, :origin, :zoo
    @@all = []
    def initialize (name,species, zoo, origin)
        @name = name
        @species = species
        @zoo = zoo
        @origin = origin
        self.class.all << self
    end
    def self.all
        @@all
    end
end






