

class Sheep
  @@count = 0
  def initialize 

    @@count += 1
    @count = @@count
    fed = true 
  end 


  def self.how_many 
    return @@count 
  end 
end 

p Sheep.new
p Sheep.new
p Sheep.new
p Sheep.new

sheep = Sheep.new
p sheep.how_many




