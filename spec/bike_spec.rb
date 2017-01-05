require "bike"

describe Bike do
  it { expect(subject.respond_to?(:working?)).to eq true}
end


# describe DockingStation do
#   it { expect(subject.respond_to?(:release_bike)).to eq true }
# end
