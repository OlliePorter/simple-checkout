class Item

  GENERATE_PRICE = rand(0..10).to_f

  attr_reader :generate_price

  def initialize(generate_price = GENERATE_PRICE)
    @generate_price = generate_price
  end

  def working?
    true
  end

end
