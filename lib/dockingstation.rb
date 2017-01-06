require_relative 'bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes
  attr_reader :capacity

  def release_bike
    raise "No bikes in station" if empty?
    Bike.new
  end

  def dock_the_bike(bike, working = true)
    raise "Station is full" if full?
    bike.working = false if working == false
    @bikes << bike
  end

  private

 def full?
   @bikes.length >= @capacity
 end

 def empty?
   @bikes.length == 0
 end


end
