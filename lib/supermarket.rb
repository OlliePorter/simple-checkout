class Supermarket

  attr_reader :show_items

  def initialize(item)
    @show_items = []
    @item = item
  end

  def add(item)
    @show_items.push(item)
  end

  def price()
    @item.generate_price
  end

end
