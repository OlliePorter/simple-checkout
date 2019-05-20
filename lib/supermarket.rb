class Supermarket

  attr_reader :show_items

  def initialize()
    @show_items = []
    @item = Item.new
  end

  def add(item)
    @show_items.push(item)
  end

  def price(item)
    @item.generate_price
  end

end
