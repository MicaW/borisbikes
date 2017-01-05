require_relative 'bike.rb'

class DockingStation

  def initialize(original_bike=0)
    @stations_bike = original_bike
  end

attr_reader :stations_bike




  def release_bike
    Bike.new
  end

  def dock_the_bike(bike)
    @stations_bike = bike
  end


end
