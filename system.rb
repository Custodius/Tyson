module Tyson
  class System
    def initialize
      @size = rand(4..15)
      $planets = []
      generate_planets
    end

    def generate_planets
      @size.times do
        $planets << generate_planet
      end
    end

    def generate_planet
      Otherplanet.new
    end
  end
end
