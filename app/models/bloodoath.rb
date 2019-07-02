class BloodOath

    @@all = []

    attr_accessor :initiation_date, :cult_name, :follower

    def initialize(initiation_date, cult_name, follower)
        @initiation_date = initiation_date
        @cult_name = cult_name
        @follower = follower

        @@all << self
    end

    def self.all
        @@all
    end
end

#returns a `String` that is the initiation date of this blood oath in the format _YYYY-MM-DD_.

































# class BloodOath

#     attr_reader :follower, :cult
#     attr_accessor :BloodOath

#     @@all = []
    
#     def initialize(follower, cult)
#         @follower = follower
#         @cult = cult

#         @@all << self
#     end

#     def self.all
#         @@all
#     end

# end