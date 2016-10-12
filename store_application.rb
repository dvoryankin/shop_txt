class StoreApplication

  class << self

    def config
      unless @instance
        puts "loading files..."
        require_relative 'string'
        require_relative 'item_container'
        require_relative 'item'
        require_relative 'virtual_item'
        require_relative 'antique_item'
        require_relative 'real_item'
        require_relative 'cart'
        require_relative 'order'
      end
      @instance ||= self
    end

    attr_accessor :name, :environment

    def admin
      @instance ||= Admin.new(&block)
    end

    class Admin

      class << self

        def new
          unless @instance
            yield
          end
          @instance ||= self
        end

        attr_accessor :email, :login

        def send_info_emails_on(day)
          @send_info_emails_on = day
        end

      end

    end

  end

end
