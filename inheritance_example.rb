# Create a new file called inheritance_example.rb and open it in Sublime.

# • Copy the Car and Bicycle class into your file: https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b

# • Use inheritance to DRY up the classes. Note - a car is NOT a type of bicycle, and a bicycle is NOT a type of car!

# • To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car “Beeeeeeep!”

# class Car
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def honk_horn
#     puts "Beeeeeeep!"
#   end
# end

# class Bike
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def ring_bell
#     puts "Ring ring!"
#   end
# end





class Vehicle 
def initialize
    @speed = 0 
    @direction = 'north'
  end 

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end 



class Car < Vehicle 


  def honk_horn
    puts "Beeeeeeep!"
  end
end




class Bike < Vehicle 

  def ring_bell
    puts "Ring ring!"
  end
end


bike = Bike.new 
car = Car.new
p bike
p car 


p bike.ring_bell
p car.honk_horn

bike.turn("south")
p


# Exercise: 
# • Open the inheritance_example.rb file from the previous example.

# • Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.

# • Open the store_item.rb file you created from the previous lesson.

# • Some of your store items are food, which have a shelf life. Create a class called Food which inherits from your original class and has an additional property of shelf_life.


class Vehicle
  
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle

  def initialize
    super
    @fuel = "10
    @make = "Honda"
    @model = "Accord"
  end 
  def honk_horn
    puts "Beeeeeeep!"
  end

  def fuel 
    @fuel 
  end 

  def make
    @make 
  end 

  def model 
    @model 
  end
end

class Bike < Vehicle
  
  def ring_bell
    puts "Ring ring!"
  end

  def speed 
    @speed
  end 

  def type
    @type
  end 

  def weight 
    @weight 
  end 

end

car = Car.new
bike = Bike.new 
p bike
car.honk_horn
bike.turn("South")
p bike


