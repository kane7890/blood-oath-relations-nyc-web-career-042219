require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
require 'date'
# puts "what the fuck"

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

aaron = Follower.new("Aaron", 25, "McCarthy Sucks")
ben = Follower.new("Ben", 25, "Mike Zaun Rules")
clayton = Follower.new("Clayton", 25, "Francesa Rules")
donald = Follower.new("Donald", 25, "Kay is overrated")
edward = Follower.new("Edward", 25, "Teddy Forever")
frank = Follower.new("Frank", 25, "TFP Will Eat")
greta= Follower.new("Greta", 35, "Impeach Trump")
hannah = Follower.new("Hannah", 35, "WFAN forever")
irene = Follower.new("Irene", 35, "Irene over all")
jennifer = Follower.new("Jennifer", 35, "Girl Power")
karen = Follower.new("Karen", 35, "Loved MMD")
lewis = Follower.new("Lewis", 30, "Rome and Zaun 2020")
maria = Follower.new("Maria", 25, "Romey You Rock")
ned = Follower.new("Ned", 50, "Socal Honk")
oscar = Follower.new("Oscar", 40, "DC Listener")

# aaron = Follower.new ("Aaron", 25, "McCarthy Sucks")
# aaron = Follower.new ("Aaron", 25, "McCarthy Sucks")
zaun_cult=Cult.new("Zaun", "New York", "Mikey Forever", 1989)
rome_cult=Cult.new("Rome", "SoCal", "Have a Take Don't Suck", 1995)
jt_cult=Cult.new("JT", "SoCal", "First SmackOff Winner", 1999)

aaron.join_cult(zaun_cult)
ben.join_cult(zaun_cult)
clayton.join_cult(zaun_cult)
donald.join_cult(zaun_cult)
edward.join_cult(zaun_cult)
frank.join_cult(zaun_cult)
greta.join_cult(zaun_cult)
hannah.join_cult(zaun_cult)
irene.join_cult(zaun_cult)
jennifer.join_cult(zaun_cult)
karen.join_cult(zaun_cult)
lewis.join_cult(zaun_cult)
lewis.join_cult(rome_cult)
maria.join_cult(rome_cult)
ned.join_cult(rome_cult)
oscar.join_cult(jt_cult)



puts "NY Cults are #{Cult.find_by_location("New York")}"

puts "MCL is #{Cult.most_common_location}"


binding.pry


puts "Mwahahaha!" # just in case pry is buggy and exits
