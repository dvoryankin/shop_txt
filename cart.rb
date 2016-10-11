class Cart

  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each { |i| f.puts "#{i.name}:#{i.price}:#{i.weight}"} # car:100:5
    end
  end

  def read_from_file

  end

end




