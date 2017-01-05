require "dockingstation.rb"

describe DockingStation do
# release bike from docking station
  it { expect(subject.respond_to?(:release_bike)).to eq true }

# is bike working?
  it 'the bike from docking station is working? is true' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  end

  #refactored above to one line
  # it{ expect(subject.release_bike.working?).to eq true}

  # can the docking station dock the bike?
  it { expect(subject.respond_to?(:dock_the_bike)).to eq true }

  #Actually docking the bike
it "actually docking the bike" do
  station = DockingStation.new
  bike = station.release_bike
  station.dock_the_bike(bike)
  expect(station.stations_bike) .to eq bike
end

end
