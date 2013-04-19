=begin
Solar System Generator
Input: User trigers the program, inputs a solar system name.
Action: Program generates a star system with that name. It should generate planets within a given range based on the star class, in various orbital positions, determine if any of those planets are in the life belt, and if so, if life is present.
Output: The program will echo back to the user, in a formatted list, the statistics for his star system.

Class: Blueprint for an object. Must start with an upper case, and any of the

print "What is the name of this star system? "  - REACTIVATE THIS WHEN TESTING IS DONE puts "\tSystem Name: #{system}";
system = gets.chomp

Homework: Put all classes in this namespace format.  Tyson::System.new
=end

require_relative("star")
require_relative("lifeplanet")
require_relative("otherplanet")
require_relative("system")

system = Tyson::System.new

def planetnumber
  nil
end

def banner(count = 10)
  42.chr * count
end
@orbit = 1
star = Star.new
lifeplanet = Lifeplanet.new
startup = rand(0..10)
#print "What is the name of this star system? "
puts " Star System ".center(45, "*")
puts "\tSystem Name: TEST";   #"\tSystem Name: #{system}";
puts "\tStellar Class: #{star.classification}"
puts "\tColor: #{star.color}"
puts "\tTemperature: #{star.temperature} K"
puts " Habitable Planet ".center(45, "*")
puts "\tPlanet Size: #{lifeplanet.size}"
puts "\tGravity: #{lifeplanet.grav}"
puts "\tLunar Bodies: #{lifeplanet.moons}"
puts "\tSurface Water: #{lifeplanet.water}%"
puts "\tAtmospheric Quality: #{lifeplanet.atmocompositon}"
puts "\tAtmospheric Pressure: #{lifeplanet.atmopress}"
puts "\tAverage Temperature: #{lifeplanet.temperatures}"
puts "\tHighest Lifeform: #{lifeplanet.highlife}"
puts " Other Bodies ".center(45, "*")



for planet in planets do
  puts "Orbital Position -  #{@orbit}"
  puts "\tType: #{planet.type}"
  puts "\tMoons: #{planet.moon}"
  @orbit = @orbit + 1
end



=begin
Finish star - temp and color of stars by class.
clean this up so no duplication. Use case or hash, but refine the code.
Make multiple planets - display multiple planets with iteration and not with manual code.


[18] pry(main)> 
names =%w[Kurt james bob biff tannen]
=> ["Kurt", "james", "bob", "biff", "tannen"]

[20] pry(main)> for name in names
[20] pry(main)*   puts name
[20] pry(main)* end
Kurt
james
bob
biff
tannen
 => ["Kurt", "james", "bob", "biff", "tannen"]
=end


