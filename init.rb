require_relative 'store_application'
StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
    admin.email = "admin@mystore.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end

end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login


@items = []
@items << AntiqueItem.new("car", {:price => 101, :weight => 100})
@items << VirtualItem.new({:price => 101, :weight => 100, :name => "car"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "kettle"})
@items << RealItem.new({:price => 101, :weight => 100, :name => "dishwasher"})

@items.each { |i| puts i.name}

cart = Cart.new("dmitry")
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 151, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 171, :weight => 100, :name => "kettle"})

p cart.all_cars
p cart.all_kettles



# method = "all_cars"
# p cart.send(method)
#
#
# @items[0].send(:price)
# @items[0].price
#
# puts @items[0].send(:tax)
# puts @items[0].tax


# puts cart.kind_of?(Cart)
# puts @items[0].kind_of?(AntiqueItem)
# puts @items[0].kind_of?(Item)
#
# puts @items[0].class == AntiqueItem
# puts @items[0].class == Item
#
# puts @items[0].respond_to?(:info)
# puts @items[0].respond_to?(:important_info)















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

