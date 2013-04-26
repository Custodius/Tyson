module Tyson
  class Planet
    attr_reader :distance
    def initialize 
      @size = random
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
  end
end
