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
	  when "Asteroid Belt" 
	    @size = 0
	  when "Desolate Rock" 	
     	 @size = @size + 3
	  when "Gas giant" 
         @size = @size + 20
      when "Ringed Giant" 
         @size = @size + 15
      when "Dwarf Planet"
	     @size = @size + 3
      when "Ice Planet" 
         @size = @size + 3
      when "Volcanic Planet"
         @size = @size + 3
      when "Comet"
	     @size = 0
	  when "Deralict Spacecraft" 
	     @size = 0
	  when "Space Station" 
         @size = 0
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