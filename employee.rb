
# employee_1 = ["Bruce ", "Wayne", "70000", true]
# employee_2 = ["Diana", "Prince", 80000, true]


# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."

# # # interpealtion
# puts "#{employee_2[0]} #{employee_2[1] } makes #{employee_2[2]} a year."
 

# hash 

employee_1 = {"first_name" => "Bruce ", "last_name" => "Wayne", "salary" => 70000, "active" => true}
employee_2 = {"first_name" => "Diana", "last_name" => "Prince", "salary" => 80000, "active" => true}

puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes #{employee_1["salary"]} a year." 
puts "#{employee_2["first_name"]} #{employee_2["last_name"]} makes #{employee_2["salary"]} a year."

#rubyhash sytax if define with a symbol, must call it with a string 

employee_1 = {:first_name => "Bruce ", :last_name => "Wayne", :salary => 70000, :active => true}
employee_2 = {:first_name => "Diana", :last_name => "Prince", :salary => 80000, :active => true}

puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."
puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year." 


#  (javascript syntax) workds same a symbol


employee_1 = {first_name: "Bruce ", last_name: "Wayne", salary: 70000, active: true}
employee_2 = {first_name: "Diana", last_name: "Prince", salary: 80000, active: true}





# employee_1 = {"first_name" => "Bruce", "last_name" => "Wayne", "salary" => 70000, "active" => true}

# employee_2 = {"first_name" => "Diana", "last_name" => "Prince", "salary" => 70000, "active" => true}

# puts "#{employee_1 ["first_name"]} #{employee_1 ["last_name"]}" 

# # symbols less changeable, stored lighter 
# employee_1 = {:first_name => "Bruce", :last_name => "Wayne", :salary => 70000, :active => true}

# employee_2 = {:first_name => "Diana", "last_name" => :Prince, :salary => 80000, "active" => true}

# # javascript syntex 




# # array works best as a list of numbers (want all tereated the same)
# employee_2 = {first_name: "Diana", last_name: "Prince", salary: => 70000, active: true}





#
# class Employee
#   def initialize(input_first_name, input_last_name, input_salary, input_active)
#     @first_name = input_first_name
#     @last_name = input_last_name
#     @salary = input_salary
#     @input_active = input_active
#   end 

#   def input_first_name
#       @first_name
#   end

#   def input_last_name
#     @last_name
#   end  

#   def salary
#     @salary 
#     # getter method 
#   end


#   def input_active 
#     @active 
#   end


#   def print_info
#     puts" #{first_name} #{last_name } makes #{salary} a year."
#   end 

#   def first 
#     "hello"
#   end 

#   def second
#     first 
#   end 


#   def give_annual_raise
#     @salary = @salary * 1.05
#   end


# end 


# employee_1 = Employee.new("Bruce ", "Wayne", 70000, true)
# employee_2 = Employee.new("Diana", "Prince", 800000, true)

# p employee_1.print_info
# p employee_2.print_info
# p employee_1.second 

# employee_2.give_annual_raise
# employee_2.print_info




# slide

# employee_1 = ["Bruce", "Wayne", 70000, true]
# employee_2 = ["Diana", "Prince", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."


# employee_1 = {:first_name => "Bruce", :last_name => "Wayne", :salary => 70000, :active => true}
# employee_2 = {first_name: "Diana", last_name: "Prince", salary: 80000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."


# class Employee
#   attr_reader :first_name, :last_name, :salary, :active 
#   # replaces reader method 

#   attr_writer :active 
#   #replaces writer method 
#   def initialize(input_first_name, input_last_name, input_salary, input_active)
#     @first_name = input_first_name
#     @last_name = input_last_name
#     @salary = input_salary
#     @active = input_active
#   end

  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def salary
  #   @salary
  # end

  # def active
  #   @active
  # end

  # def active=(new_active)
  #   @active = new_active
  # end

#   def print_info
#     puts "#{first_name} #{last_name} makes #{salary} a year."
#   end

#   def give_annual_raise
#     @salary = @salary * 1.05
#   end
# end

# employee_1 = Employee.new("Bruce", "Wayne", 70000, true)
# employee_2 = Employee.new("Diana", "Prince", 80000, true)
# p employee_1.active
# employee_1.active = false
# p employee_1.active





class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new(
                          first_name: "Bruce", 
                          last_name: "Wayne", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Diana", 
                          last_name: "Prince", 
                          salary: 80000, 
                          active: true
                          )
# employee_2.print_info
# p employee_1.active
# employee_1.active = false
# p employee_1.active

class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending Email..."
    #code that sends email
    puts "Email sent."
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

manager = Manager.new(
                      first_name: "Clark",
                      last_name: "Kent",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
p employee_1.active
p employee_2.active
manager.fire_all_employees
p employee_1.active
p employee_2.active





