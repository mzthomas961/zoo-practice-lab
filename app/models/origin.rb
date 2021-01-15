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
    
end

