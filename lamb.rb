
class Sheep 
  @@count = 0 
  def initialize 
    @@count +=1 
    @count = @@count 
    fed = true 
  end 

  def how_many 
    return @count 
  end 
end 


p Sheep.new
p Sheep.new
p Sheep.new
p Sheep.new

p Sheep.new.how_many
