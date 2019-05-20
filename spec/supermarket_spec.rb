require 'supermarket'

describe Supermarket do
  it 'expects supermarket to be a kind of Supermarket' do
    supermarket = Supermarket.new
    expect(supermarket).to be_a_kind_of(Supermarket)
  end

  it 'expects supermarket to respond to show_items method' do
    supermarket = Supermarket.new
    output = supermarket.show_items
    expect(output).to eq([])
  end

  it 'expects an item to be able to be added to show_items' do
    supermarket = Supermarket.new
    item = Item.new
    supermarket.add(item)
    expect(supermarket.show_items.length).to eq(1)
  end

  it 'creates a randomly generated price at initialization' do
    supermarket = Supermarket.new
    item =  Item.new
    price = double("price")
    price = instance_double("Price", :generate_price => 2.0)
    output = supermarket.price(item)
    expect(output).to eq(2.0)
  end

end
