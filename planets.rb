module Tyson
  class Planet
    attr_reader :size
    def initialize 
      @size = random
    end
    
    def random(minimum = 0, maximum = 13)
      rand(minimum..maximum)
    end
  end
end
