require "minitest/autorun"
require_relative "../lib/tyson.rb"

describe Tyson::Planet do
  it "should be setup with a distance from the sun" do
    planet1 = Tyson::Planet.new
    planet2 = Tyson::Planet.new
    planet1.distance.wont_equal(planet2.distance)
  end
end
