require "dockingstation.rb"

describe DockingStation do
  it { expect(subject.respond_to?(:release_bike)).to eq true }
  it 'the bike from docking station is working? is true' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  end
  #it{ expect(subject.release_bike.working?).to eq true}
end
