require 'dockingstation.rb'

describe DockingStation do
  it 'feature test for release bike' do
    expect{subject.release_bike}.to raise_error("No bikes in station")
  end
end
