require_relative 'bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    raise "No bikes in station" if empty?
    Bike.new
  end

  def dock_the_bike(bike)
    raise "Station is full" if full?
    @bikes << bike
  end

  private

 def full?
   @bikes.length >= DEFAULT_CAPACITY
 end

 def empty?
   @bikes.length == 0
 end


end
