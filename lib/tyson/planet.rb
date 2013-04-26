module Tyson
  class Planet
    attr_reader :distance
    def initialize(system) 
      @size = random
      @system = system
      @distance = if system.planets.any? then generate_distance else random end
    end

    def size
      case @size 
      when 0..1 then "Small"
      when 2..3 then "Medium"
      when 4..8 then "Earth Standard"
      when 9..11 then "Large"
      when 12..13 then "Very Large"
      else  "Error"
      end
    end
    
    def random(minimum = 0, maximum = 13)
      rand(minimum..maximum)
    end

    def generate_distance
      distances = system.planets.map { |planet| planet.distance }
      random_distance = random 
      while distances.include?(random_distance)
        random_distance = random
      end
    end
  end
end



 #=> [5, 3, 9]


# 0..13, that is not 5, 3, or 9


# orbit 1 - random variable - then each planet orbit thereafter takes the sum of previous orbits and adds it to itself with a range for the next orbital body. 
# write a test for every defined function - it does not matter if the interior is blank, but weite a test format for each method. 
