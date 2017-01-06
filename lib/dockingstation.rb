require_relative 'bike.rb'

class DockingStation

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
   @bikes.length >= 20
 end

 def empty?
   @bikes.length == 0
 end


end
