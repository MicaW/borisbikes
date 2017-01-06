require "dockingstation.rb"

describe DockingStation do
# release bike from docking station
  it { expect(subject.respond_to?(:release_bike)).to eq true }

  #check the bike is working
  #it{ expect(subject.release_bike.working?).to eq true}

  # can the docking station dock the bike?
  it { expect(subject.respond_to?(:dock_the_bike)).to eq true }

  # actually docking the bike
  it "actually docking the bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock_the_bike(bike)
    expect(station.stations_bike) .to eq bike
  end

  it "won't release a bike when station is empty" do
    expect{subject.release_bike}.to raise_error("No bikes in station")
  end

  it "won't dock a bike when station is full" do
    bike = Bike.new
    station = subject
    station.dock_the_bike(bike)
    expect{station.dock_the_bike(bike)}.to raise_error("Station is full")
  end
end
