class Star
  CLASSIFICATIONS = %w[O B A F G K M]
  COLORS = %w[Blue-White Blue-White White Yellow-White Yellow Orange Red]
  TEMPATURES = ["33,000", "22,000", "9,000", "6,600", "5,500", "4,000", "2,700"]

  def initialize
    @classification = rand(0..6)
  end

  def classification
    CLASSIFICATIONS.at(@classification)
  end

  def color
    COLORS.at(@classification)
  end

  def temperature
    TEMPATURES.at(@classification)
  end
end
