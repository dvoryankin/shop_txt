module ItemContainer

  module ClassMethods

    def min_price
      100
    end

  end

  module InstanceMethods

    def method_missing(method_name)
      if method_name =~ /^all_/
        show_all_items_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
      else
        super
      end
      #puts "method #{method_name} is not defined on this object"
    end

    def add_item (item)
      unless item.price < self.class.min_price
        @items.push item
      end
    end

    def remove_item
      @items.pop
    end

    def validate
      @items.each { |i| puts "Item2 has no price" if i.price.nil? }
    end

    def delete_invalid_items
      @items.delete_if { |i| i.price.nil? }
    end

    def count_valid_items
      @items.count { |i| i.price }
    end

    private

      def show_all_items_with_name(n)
        @items.map { |i| i.to_s if n == i.name }.delete_if { |i| i.nil? }
      end

  end

  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end



end

Hash.new(:default)[:whatever] == :default