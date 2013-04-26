require "minitest/autorun"
require_relative "../lib/tyson.rb"

describe Tyson::Planet do
  it "should be setup with a distance from the sun" do
    planet = Tyson::Planet.new
    planet.distance.must be_kind_of(Integer)
  end
end
