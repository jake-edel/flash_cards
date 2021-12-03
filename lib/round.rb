class Round
  attr_reader :deck, :turns, :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    @number_correct if guess == current_card.answer
    @turns << Turn.new(guess, current_card)
    @turns.last
  end
end
