class Lifeplanet
  SURFACE_WATERS = [0, 5, 10, 20, 30, 40, 40, 50, 50, 60, 70, 80, 90, 100]
  LIFEFORMS = %w[Microbes Microbes Plants Plants Aquatic Aquatic Amphibians Amphibians Reptiles Reptiles Birds Birds Mammals Mammals]

  # This should probably be a method now, just like atmopres -- YEah, I know. I justhavn't gotten to it yet because each one is unique.
  GRAVITIES = ["Low (0.5 ES)", "Low (0.6 ES)", "Low (0.7 ES)", "Standard (0.8 ES)", "Standard (0.9 ES)", "Standard (1.0 ES)", "Standard (1.1 ES)", "High (1.2 ES)", "High (1.2 ES)", "High (1.3 ES)", "Very High (1.5 ES)", "Very High (1.7 ES)" , "Very High (2.0 ES)"]

  def initialize
    @size = random
    @atmopress = random
    @atmocomp = random
    @temperature = random
  end
  
  def random(minimum = 0, maximum = 13)
    rand(minimum..maximum)
  end
  
  def water
    SURFACE_WATERS.at(random)
  end

  def atmopress
    case @atmopress
      when 0..0 then "Trace"
      when 1..3 then "Low"
      when 4..10 then "Standard"
      when 11..13 then "High"
      else "Error"
    end
  end

  def atmocompositon
    case @atmocomp
      when 0..2 then "Toxic"
      when 3..5 then "Tainted"
      when 6..10 then "Breathable"
      when 11..12 then "Tainted"
      when 13..13 then "Toxic"
      else "Error"
    end
  end

  def temperatures
    case @temperature
      when 0..2 then "Cold"
      when 3..7 then "Temperate"
      when 8..11 then "Hot"
      when 12..13 then "Very Hot"
      else then "Error"
    end
  end

  def highlife
    LIFEFORMS.at(random)
  end

  def size
    case @size
      when 0 .. 1
        "Small"
      when 2 .. 3
        "Medium"
      when 4 .. 8
        "Earth Standard"
      when 9 .. 11
        "Large"
      when 12 .. 13
        "Very Large"
      else
        "Error"
    end
  end

  def grav
    GRAVITIES.at(@size)
  end

  def moons
    @moon = @size - rand(7..10)
    if @moon <= 0
      moons = "0"
    else
      moons = @moon
    end
  end
end
