class Follower

    @@all = []

    attr_accessor :name, :age, :life_motto

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end 

    def cults
        BloodOath.all.map do |oaths| 
            if oaths.follower == self
              oaths.cult_name
            end
        end
    end

# takes in an argument of a `Cult` instance and adds this follower 
#to the cult's list of followers
    def join_cult(cult)
####################################
BloodOath.new("_2019-07-02_", cult, self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(num)
        Follower.all.map do |follower|
            if follower.age > num
                follower.name
            end
        end
    end

end



















# class Follower

#     attr_reader :follower

#     @@all = []

#     def initialize(follower)
#         @follower = follower
#         @vow = ""

#         @@all << self
#     end

#     def self.all    
#         @@all
#     end

# # end