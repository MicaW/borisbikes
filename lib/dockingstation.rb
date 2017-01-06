require_relative 'bike.rb'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    raise "No bikes in station" if @bikes.length == 0
    Bike.new
  end

  def dock_the_bike(bike)
    raise "Station is full" if @bikes.length >= 20
    @bikes << bike
  end



end
