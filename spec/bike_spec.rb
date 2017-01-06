require "bike"

describe Bike do
  it { expect(subject.respond_to?(:working)).to eq true}

  let(:station) { double :DockingStation }

  it 'checks whether by default bike is working' do
    station.dock_the_bike(subject)
    expect(station.bikes.last.working).to eq(true)
  end

  it 'checks whether we can say straight to the bikethat it is not working' do
    bike = subject
    bike.working = false
    station.dock_the_bike(bike)
    expect(station.bikes.last.working).to eq(false)
  end

end
