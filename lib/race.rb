require_relative 'car'

class Race
  attr_accessor :cars # creates cars accessor
  def initialize
  	@cars = [] # creates @cars array
  	car1 = Car.new(rand(0..100)) #Creates car with random speed at initialization
  	car2 = Car.new(rand(0..100)) #Creates car with random speed at initialization
  	@cars.push(car1, car2)
  end
  def winner
  	return @cars[0] if @cars[0].speed > @cars[1].speed
  	return @cars[1] if @cars[1].speed > @cars[0].speed
  end
  def loser
  	return @cars[0] if @cars[0].speed < @cars[1].speed
  	return @cars[1] if @cars[1].speed < @cars[0].speed
  end
end
