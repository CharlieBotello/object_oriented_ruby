
# Exercise: 
# • Open the inheritance_example.rb file from the previous example.

# • Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.

# • Open the store_item.rb file you created from the previous lesson.

# • Some of your store items are food, which have a shelf life. Create a class called Food which inherits from your original class and has an additional property of shelf_life.

# Bonus: Read about the differences between redefining, overriding, and super. Complete the exercise at the end to get the tests to pass: https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/37-classes-inheritance/lessons/88-redefining-overriding-and-super
# RubyMonk
# RubyMonk - Interactive ruby tutorials to learn Ruby
# An online interactive ruby learning platform



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
  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @speed = input_options[:speed]  
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: 10,
              make: "Toyota",
              model: "Corrolla"
              )
bike = Bike.new(
                speed: 15,
                weight: 27,
                type: "mountain"
                )

p car
p bike
# car.honk_horn
# bike.turn("South")
# p bike
