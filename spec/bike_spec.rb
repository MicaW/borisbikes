require "bike"

describe Bike do
  it { expect(subject.respond_to?(:working?)).to eq true}
end
