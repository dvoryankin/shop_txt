require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do
  it 'calculates price according to a special formula' do
    item = Item.new('kettle', price: 200)
    item.price.should == 212
  end

end
