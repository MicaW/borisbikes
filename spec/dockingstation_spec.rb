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
    expect(station.bikes.last) .to eq bike
  end

  it "won't release a bike when station is empty" do
    expect{subject.release_bike}.to raise_error("No bikes in station")
  end

  it "won't dock a bike when station is full" do
    bike = Bike.new
    station = subject
    expect{(station.capacity + 1).times {station.dock_the_bike(bike)}}.to raise_error("Station is full")
  end

  it "can store 20 bikes" do
    dockingstation = subject
    dockingstation.capacity.times do
      expect{dockingstation.dock_the_bike(Bike.new)}.not_to raise_error
    end
  end

  it 'check that newly created station can respond to both 0 and 1 argument' do
    expect {DockingStation.new(14)}.not_to raise_error
    expect {DockingStation.new}.not_to raise_error
    expect(DockingStation.new(14).capacity).to eq(14)
    expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end

  #should respond_to(:release_bike).with(0).argument

  it 'reports a bike as broken when I return it' do
    #checks whether by default bike is working
    station = subject
    station.dock_the_bike(Bike.new)
    expect(station.bikes.last.working).to eq(true)

    #checks that if we pass that it is not working it communicates it to the bike
    station = subject
    station.dock_the_bike(Bike.new, false)
    expect(station.bikes.last.working).to eq(false)

    #chacks whether we can say straight to the bikethat it is not working
    station = subject
    station.dock_the_bike(Bike.new(false))
    expect(station.bikes.last.working).to eq(false)
  end

end
