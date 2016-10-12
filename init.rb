require_relative 'item_container'
require_relative 'cart'
require_relative 'order'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'

@items = []
@items << RealItem.new({:price => 101, :weight => 100, :name => 'car'})
@items << RealItem.new({:price => 101, :weight => 100, :name => 'kettle'})
@items << RealItem.new({:price => 101, :weight => 100, :name => 'dishwasher'})







# cart = Cart.new
# cart.add_item item1
# cart.add_item item2
# cart.add_item item3
#
# puts cart.items.size



# item.info {|attr| puts attr}
#

# cart.remove_item
# puts cart.items.size
#
# order = Order.new
# order.add_item item1
# order.add_item item2
# order.add_item item3
# order.remove_item
# puts order.items.size
#
# puts order.count_valid_items
#
# class User < ActiceRecord::Base
#
# end
#
# class ActiveRecord
#   class Base
#
#   end
# end


# puts Item.discount.round 3
# puts '----'
# puts item1.price
# puts item1.real_price
# p Time.now.month


# p cart.items
# cart.delete_invalid_items
# p cart.items
#
# p item1.respond_to?(:weight)
# p item2.respond_to?(:weight)


# cart = Cart.new
# cart.add_item(Item.new)
# cart.add_item(Item.new)
# cart.validate
#
# p cart.items
#
# cart.remove_item
#
# p cart.items

