class Order

  attr_reader :items

  include ItemContainer


  def initialize
    @items = []
    #...
  end

  def place
    Pony.mail(:to => StoreApplication::Admin.email,
              :from => "My Store <pchellovod@gmail.com>",
              :via => :smtp, :via_options => {
                address:     'smtp.gmail.com',
                port:        '587',
                user_name:   'pchellovod@gmail.com',
                password:    'Rfdfkthbz1234',
                authentication: :plain,
                domain:       "mail.google.com"},
              subject: "New order has been placed",
              body: "Please check back you admin page to see it!")
  end

end