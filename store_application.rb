class StoreApplication

  class << self

    def new
      unless @instance
        puts "loading files..."
        puts self.class
        require_relative 'string'
        require_relative 'item_container'
        require_relative 'item'
        require_relative 'virtual_item'
        require_relative 'antique_item'
        require_relative 'real_item'
        require_relative 'cart'
        require_relative 'order'
        @instance ||= self
      end
      @instance ||= self
    end

  end

end