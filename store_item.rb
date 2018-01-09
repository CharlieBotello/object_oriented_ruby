# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.

# B. Create a new file in the folder called store_item.rb and open it in Sublime.

# C. Use hashes with symbols to represent the following scenario:
#      C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
#      C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
#      C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

# Bonus: Read more about Ruby’s hash symbol syntax:
# - http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
# - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer? (edited)

# item_1 = {:color => "red", :price => 3, :available => true } 
# item_2 = {color: white, price: 2, available: true}
# item_3 = {:color => "blue", :price => 5, :available => false} 



class Item
  attr_reader :input_color, :input_price, :input_available
  attr_writer :input_price



  def initialize(input_options)
    @input_color = input_options[input_color]
    @input_price = input_options[input_price]
    @input_available = input_options[input_available]
  end 

  # def input_color
  #   @input_color
  #   end 

  # def input_price 
  #   @input_price
  #   end 

  # def input_available
  #   @input_available
  # end  
  # def input_price=(new_price)
  #   @input_price = new_price
  # end 

  def give_tax
    @price = @price * 0.10
  end 

end 



item_1 = Item.new(
                  input_color: "red", 
                  input_price: 3, 
                  input_available: true
                  )

item_2 = Item.new(
                  input_color: "red", 
                  input_price: 3, 
                  input_available: true
                  )

item_3 = Item.new(
                  input_color: "white", 
                  input_price: 5, 
                  input_available: false
                  )
p item_1.input_color
item_1.input_price = 2
p item_1

