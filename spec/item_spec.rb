require 'item'

describe Item do
  it 'expects item to be a kind of Item' do
    item = Item.new
    expect(item).to be_a_kind_of(Item)
  end
  it 'expects item to be working?' do
    item = Item.new
    expect(item).to respond_to(:working?)
  end
  it 'should set a price for the item at initialization' do
    item = Item.new
    expect(item.generate_price).to be_between(0,10)
  end
end
