class Order

  attr_reader :items, :placed_at, :time_spent_on_sending_email

  include ItemContainer


  def initialize
    @items = []
    #...
  end

  def place
    @placed_at = Time.now
    thr = Thread.new do
      Pony.mail(:to => StoreApplication::Admin.email,
                :from => "My Store <skotobaza74@ya.ru>",
                :via => :smtp, :via_options => {
                  address:     'smtp.yandex.ru',
                  port:        '587',
                  user_name:   'skotobaza74@ya.ru',
                  password:    '123',
                  authentication: :plain,
                  domain:       "mail.yandex.ru"},
                subject: "New order has been placed",
                body: "Please check back you admin page to see it!")
    end
    while(thr.alive?)
      puts "."
      sleep(1)
    end
    sent_email_at = Time.now
    @time_spent_on_sending_email = sent_email_at - @placed_at

  end

end