Exercise: 
• Create a new file called manager.rb. Paste in the code: 
• Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.
• Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.
Bonus: What happens when you define a method in the Employee and Manager class with the same name? Read more about method overriding here:


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
      p "#{first_name} #{last_name} makes #{salary} a year."
    end 

    def give_annual_raise
      @salary = @salary * 1.05 
    end 

  end 

employee_1 = Employee.new(
                          {first_name: "Bruce",
                           last_name: "Wayne", 
                           salary: 70000, 
                           active: true}
                           )
employee_2 = Employee.new(
                          {first_name: "Diana", 
                            last_name: "Prince",  
                            salary: 80000, 
                            active: true}
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

    def print_info
      p "#{first_name} #{last_name} makes #{salary} a year."
    end 

    def give_annual_raise
      @salary = @salary * 1.05 
    end 

    def send_report 
      puts "sending email.."
      #code that sends email
      puts "email sent."
    end

    def give_all_raises
      @employees.each do |employee|
       employee.give_annual_raise
      end
    end 

    def fire_all_employees
      employees.active = false 
    end 

  end 


manager = Manager.new(
                      first_name: "Clark",
                      last_name: "Kent",
                      salary: "100000",
                      active: true,
                      employees: [employee_1, employee_2]

  )


p employee_1.actice
p employee_2.active
manager.give_all_raises
p employee_1.active
p employee_2.active 
