require 'supermarket'

describe Supermarket do
  it 'expects supermarket to be a kind of Supermarket' do
    supermarket = Supermarket.new(Item.new)
    expect(supermarket).to be_a_kind_of(Supermarket)
  end

  it 'expects supermarket to respond to show_items method' do
    supermarket = Supermarket.new(Item.new)
    output = supermarket.show_items
    expect(output).to eq([])
  end

  it 'expects an item to be able to be added to show_items' do
    supermarket = Supermarket.new(Item.new)
    item = Item.new
    supermarket.add(item)
    expect(supermarket.show_items.length).to eq(1)
  end

  it 'expects to generate a random price between 0 and 10' do
    item = double("item")
    supermarket = Supermarket.new(item)
    expect(supermarket.price()).to eq(2.0)
  end

end
