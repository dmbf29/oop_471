# filename -> lower_snake_case
# class name -> UpperCamelCase

class Car
  # for instance methods, you don't need to pass arguments

  # this creates attr_reader + attr_writer
  attr_accessor :color
  # constructor method
  # this method gets run after .new
  def initialize(color, brand = 'BMW')
    @color = color
    @engine_started = false
    @brand = brand
  end

  # def set_transmission(transmission)
  #   @trasnmission = transmission
  # end

  # you can always access instance variables inside of instance methods
  def color
    @color
  end
  # when you want a method, to expose an instance variable of the same name
  attr_reader :brand #:color, :brand
  # this creates a method
  # THESE TWO THINGS ARE THE EXACT SAME

  # attr_writer :color
  # def brand
  #   @brand
  # end

  # THIS IS WHAT attr_writer CREATES
  # def color=(new_color)
  #   @color = new_color
  # end

  def engine_started?
    @engine_started
  end

  # you can call other instance methods inside of instance methods
  def start_engine!
    start_battery
    spark_plug
    pump_pistons
    @engine_started = true
  end

  private
  # can only be called in other instance methods

  def start_battery
    puts "start battery...."
  end

  def spark_plug
    puts "spark plug...."
  end

  def pump_pistons
    puts "pump pistons..."
  end

end

# p Car.new('black', 'Ferrari')
