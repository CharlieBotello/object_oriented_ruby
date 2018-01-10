# Exercise: 
# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.

# B. Create a new file in the folder called store_item.rb and open it in Sublime.

# C. Use hashes with symbols to represent the following scenario:
#      C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
#      C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
#      C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).





# item_1 = {:description => "apple", :color => "red", :price => 5 :available => true}
# item_2 = {description: "phone", :color "white", price: 200, available: true}
# item_3 = {description: "computer", color: "red", price: 500, available: true}







# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.



# Exercise: Replace your getter and setter methods using the attr_reader and attr_writer shortcuts!
# Bonus: Read more about how attr_reader works its magic (advanced stuff here)



# class Item 
  
#   def initialize(description, color, price, available)
#     @description = description
#     @color = color
#     @price = price 
#     @available = available
#   end 

#   def print_info
#     puts "#{@color} #{@description} costs #{@price}"

#   end 

#   def item_tax
#     @price = @price * 0.10
#   end 

# end 




# item_1 = Item.new("apple", "red", 5, true)
# item_2 = Item.new("phone", "white", 200, true)
# item_3 = Item.new("computer", "blue", 500, false)
# p item_1.print_info
# p item_1.item_tax


class Item 
  attr_reader :description, :color, :price, :available
  attr_writer :available

  def initialize(input_options)
    @description = input_options[:description]
    @color = input_options [:color]
    @price = input_options [:price]
    @available = input_options [:available]
  end 

  def print_info
    puts "#{color} #{description} costs #{price}"
  end 

  def give_tax 
    @price = @price * 0.10
  end 

end 


item_1 = Item.new(
                  {description: "apple", 
                  color: "red", 
                  price: 5, 
                  available: "true"}
                  )

item_2 = Item.new(
                  {description: "phone", 
                  color: "white", 
                  price: 200, 
                  available: true}
                  )

item_3 = Item.new(
                  {description: "computer", 
                  color: "blue", 
                  price: 500, 
                  available: false}
                  )














