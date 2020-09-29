
# card.rb
#
VALID_SUITS = [:hearts, :diamonds, :clubs, :spades]
CARD_VALUES = {
    1 => "Ace",
    11 => "Jack",
    12 => "Queen",
    13 => "King"
}

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if !(VALID_SUITS.include?(suit))
      raise ArgumentError, "Invalid suit."
    elsif value.class == String && !(FACE_VALUES.keys.include?(value.capitalize))
      raise ArgumentError, "Invalid string entered."
    elsif value < 1 || value > 13
      raise ArgumentError, "Invalid value."
    end

    @value = value
    @suit = suit
  end

  def to_s
    if CARD_VALUES[value].nil?
      CARD_VALUES[value] = value
    end
    return "#{CARD_VALUES[value]} of #{suit.to_s}"
  end

  private

end
