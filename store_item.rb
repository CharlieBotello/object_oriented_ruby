A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.

B. Create a new file in the folder called store_item.rb and open it in Sublime.

C. Use hashes with symbols to represent the following scenario:
     C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
     C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
     C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

Bonus: Read more about Ruby’s hash symbol syntax:
- http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
- Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer? (edited)


ruby hash syntax (example item_1) javascript syntax
ruby hash syntax works the same as javascripts syntax
item_1 = {:description => "bike", :color => "red", :price => 100, :in_stock=> true} 
item_2 = {description: "phone", color: "white", price: 300, in_stock: true}
item_3 = {:description => "computer", :color => "blue", :price => 500, :in_stock => false} 


puts "#{item_1[:description]} #{item_1[:color]} costs #{item_1[:price]}"
puts "#{item_2[:description]} #{item_2[:color]} costs #{item_2[:price]}"





class Item

  attr_reader :item_description, :item_color, :item_price, :item_in_stock

  attr_writer :item_in_stock

  def initialize(input_options)
    @item_description = input_options [:item_description]
    @item_color = input_options [:item_color]
    @item_price = input_options [:item_price] 
    @item_in_stock = input_options [:item_in_stock]
  end 

  # def item_desrcription
  #   @item_description
  # end 

  # def item_color 
  #   @item_color
  # end 

  # def item_price
  #   @item_price
  # end 

  # def item_in_stock 
  #   @item_in_stock
  # end 

  def new_price=(number)
    @item_price = (number)
  end 



  def print_info 
    puts "#{@item_color} #{@item_description} costs #{@item_price}"
  end
end

puts 
item_1 = Item.new({item_description: "bike", 
                  item_color: "red", 
                  item_price: 100,  
                  item_in_stock: true}
                  )

item_2 = Item.new({item_description: "phone", 
                  item_color: "white", 
                  item_price: 300, 
                  item_in_stock: true}
                  )
item_3 = Item.new({item_description: "computer",
                  item_color: "blue",
                  item_price: 500,
                  item_in_stock: false}
                  )







