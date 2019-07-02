require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

follower1 = Follower.new("Olga", 33, "YOLO")
follower2 = Follower.new("John", 35, "Live free or die")
follower3 = Follower.new("Rashad", 32, "All for one")
follower4 = Follower.new("Aliceia", 26, "One for all" )

cult1 = Cult.new("McD", "Boston", 1986, "DRY")
cult2 = Cult.new("SoA", "California", 1990, "WET")
cult3 = Cult.new("Aztecs", "California", 1989, "DAMP")
cult4 = Cult.new("Incas", "Peru", 550, "HUMID")

#returns a `String` that is the initiation date of this blood oath in the format _YYYY-MM-DD_.
oath1 = BloodOath.new("_2019-07-02_", cult1, follower3)
oath2 = BloodOath.new("_2017-09-20_", cult4, follower2)
oath3 = BloodOath.new("_2015-08-31_", cult2, follower4)
oath4 = BloodOath.new("_2012-02-29_", cult3, follower1)
oath5 = BloodOath.new("_2011-12-31_", cult1, follower1)
oath6 = BloodOath.new("_2016-01-08_", cult4, follower1)
oath7 = BloodOath.new("_2015-07-04_", cult4, follower3)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
