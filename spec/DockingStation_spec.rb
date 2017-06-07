require 'DockingStation.rb'

describe DockingStation do
it { is_expected.to respond_to(:release_bike) }


it "releases a bike and expects it to be working" do
  bike = subject.release_bike
  expect(bike).to be_working
end

it "docking station has a method dock_bike taking one argument" do
  expect(subject).to respond_to(:dock_bike).with(1).argument
end

it "docks a bike at a station" do
bike = subject.release_bike
expect(subject.dock_bike(bike)).to eq bike

end


end
