class Car
  attr_accessor :make, :doors, :trans

end



class Toyota < Car
    attr_accessor :model

end


class Subaru < Car
  attr_accessor :model
end
def display_car(car)
  puts "Manufacturer: #{car.make}"
  puts "Doors: #{car.doors}"
  puts "Transmission: #{car.trans}"
  puts "Model: #{car.model}"
  puts ""

end

car = Car.new
toyota = Toyota.new
subaru = Subaru.new


car.make = 'Ford'
car.doors = '2'
car.trans ='auto'
puts "#{car.make}#{car.doors}#{car.trans}"

toyota.make ='Toyota'
toyota.doors ='4'
toyota.trans ='auto'
toyota.model ='4Runner'
display_car(toyota)

subaru.make ='Subaru'
subaru.doors ='2'
subaru.trans ='manual'
subaru.model ='Impreza'
display_car(subaru)
