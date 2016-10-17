class Item

  @@discount = 0.05

  def self.discount
    if Time.now.month == 10
      return @@discount + 0.10
    else
      return @@discount
    end
  end

  def initialize(name, options = {})
    @real_price  = options[:price]
    @name   = name
  end

  attr_reader :real_price, :name
  attr_accessor :price

  def info
    yield(price)

    yield(name)
    # price.to_s + ", " + weight.to_s + ", " + name
    # [price, weight, name]
  end

  def price
    (@real_price - @real_price * self.class.discount) + tax if @real_price
  end

  def to_s
    "#{self.name}:#{self.price}:#{self.weight}"
  end

    private

    def tax
      type_tax = if self.class == VirtualItem
                   1
                 else
                   2
                 end
      cost_tax = if @real_price > 5
                   @real_price*0.2
                 else
                   @real_price*0.1
                 end
      cost_tax + type_tax
    end





  # def price
  #   @price
  #   #rand(100)
  # end

  # def price=(price_value)
  #   @price = price_value
  # end

end

#
# item1 = Item2.new({ :weight => 10, :price => 30 })
# puts item1.price
# puts item1.weight




