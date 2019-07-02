class Cult

   @@all = []
   
    attr_accessor :name, :location, :founded, :slogan
   
    def initialize(name, location, founded, slogan)
        @name = name
        @location = location
        @founded = founded
        @slogan = slogan

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(cult_name)
        Cult.all.find { |cult| cult.name == cult_name}
    end

    def self.find_by_location(location)
        Cult.all.select { |cult| cult.location == location}
    end

    def self.find_by_founding_year(founded)
        Cult.all.select { |cult| cult.founded == founded}
    end

    def recruit_follower(follower)
        BloodOath.new("_2019-07-02_", self, follower)
    end

    def cult_population
        count = BloodOath.all.select do |oaths| 
            if oaths.cult_name == self
                oaths.follower  
            end
        end
        count.length
    end
   
end   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
# class Cult
   
#     attr_reader :name, :location, :cult_name
#     attr_accessor :slogan

#     @@allcults = []
#     @@cultfollowers = []

#     def initialize(cult_name, location, founded)
#         @cult_name = cult_name
#         @location = location
#         @founded = founded

#         @@allcults << self
#     end

#     def name
#         @cult_name
#     end

#     def location
#         @location
#     end

#     def founded
#         @founded
#     end

#     def set_slogan(slogan)
#         @slogan = slogan
#     end

#     def recruit_follower(follower)
#         @@cultfollowers.lentgh
#     end

#     def self.all
#         @@allcults
#     end

# end