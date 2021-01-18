# require_relative 'animal'
# require_relative 'zoo'
# require 'pry'
# class Origin

#     attr_reader :country, :continent
#     @@all = []
    

#     def initialize (country, continent)
#         @country = country
#         @continent = continent
#         self.class.all << self
#     end

#     def self.all
#         @@all
#     end
    
#     def animals
#        puts Animal.all
#     end


    
# end

# nyc =Origin.new("usa","na")
# bronx_zoo = Zoo.new("bronx_zoo", "address")
# cat = Animal.new("doug", "cat", nyc, bronx_zoo )

# puts cat.origin
# puts cat.zoo
# puts nyc.animals

require_relative 'zoo'
require_relative 'animal'
require 'pry'
class Origin
    attr_reader :country, :continent
    @@all = []
    def initialize (country, continent)
        @country = country
        @continent = continent
        self.class.all << self
    end
    def self.all
        @@all
    end
    def animals 
        Animal.all.select {|a| a.origin == self} 
    end
    def zoos
        self.animals.map {|a| a.zoo}
    end
    def animal_number
       self.animals.length
    end
    def self.find_by_continent(a)
       c =  Origin.all.select {|b| b.continent == a}
       c.map {|d| d.country}
    end
    def self.most_animals
        # arr = {}
        # Origin.all.map {|a| arr[a.continent] ||= 0
        # arr[a.continent] += 1}
        a = Origin.all.map {|a| a.animal_number}
        b = a.index(a.max)
        Origin.all[b]
        
    end  

end
nyc = Origin.new('USA', 'NA')
nj = Origin.new('USA', 'NA')
bronz_zoo = Zoo.new('Bronx Zoo', 'Penslyvania Ave')
mochi = Animal.new('Mochi', 'Cat', bronz_zoo, nyc)
queens_zoo = Zoo.new('Queens Zoo', "queens")
cat = Animal.new("doug","cat", queens_zoo, nyc)
rhino = Animal.new("mike","rhino",bronz_zoo,nyc)
lion = Animal.new("matt", "lion",queens_zoo,nj)

puts Zoo.find_by_name("Staten Island Zoo")
#puts bronz_zoo.all_animals
# puts bronz_zoo.all_animal_species
# puts bronz_zoo.origins
# puts nyc.animals
# puts nj.animals
# puts nyc.zoos
# puts nj.zoos
# puts nj.animal_number
# puts Origin.find_by_continent("NA")
# puts Origin.most_animals
# puts nyc
#  puts nj
puts Origin.most_animals
puts nyc
puts nj