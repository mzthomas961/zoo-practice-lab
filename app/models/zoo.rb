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
        
end
    
