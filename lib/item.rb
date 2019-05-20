class Item

  attr_reader :generate_price

  def initialize()
    @generate_price = generate_price
  end

  def working?
    true
  end

  def generate_price
    rand(0..10).to_f
  end

end
