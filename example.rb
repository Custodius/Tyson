require_relative("lib/tyson")

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



for planet in system.planets do
  puts "Orbital Position -  #{@orbit}"
  puts "\tType: #{planet.type}"
  puts "\tMoons: #{planet.moon}"
  @orbit = @orbit + 1
end
