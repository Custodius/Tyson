class Otherplanet
  PLANET_TYPE = ["Asteroid Belt", "Desolate Rock", "Gas Giant", "Ringed Giant", "Dwarf Planet", "Ice Planet", "Volcanic Planet", "Comet", "Deralict Spacecraft", "Space Station"]
  
  def initialize 
    @size = 3
  end
  def type
    PLANET_TYPE.at(random)
  end
  
  def random(minimum = 0, maximum = 9)
    rand(minimum..maximum)
  end
 
  def size
    case type
      when "Asteroid Belt" then @size = 0
      when "Desolate Rock" then @size = @size + 3
      when "Gas giant" then @size = @size + 20
      when "Ringed Giant" then @size = @size + 15
      when "Dwarf Planet" then @size = @size + 3
      when "Ice Planet" then @size = @size + 3
      when "Volcanic Planet" then @size = @size + 3
      when "Comet" then @size = 0
      when "Deralict Spacecraft" then @size = 0
      when "Space Station" then @size = 0
     end	
  end
  def moon
	  @moons = @size - rand(1..5)
	  if @moons < 0
	    moon = 0
	  else 
	    moon = @moons
	  end 
  end

end
