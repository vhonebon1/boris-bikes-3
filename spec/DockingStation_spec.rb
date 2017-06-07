require 'DockingStation.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }


  it "releases a bike and expects it to be working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "raises an error if there are no bikes" do
    expect{subject.release_bike}.to raise_error("There are no bikes available!")
  end

  describe "#dock_bike" do
    it "docking station has a method dock_bike taking one argument" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it "docks a bike at a station" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bikes).to_not be_empty
    end

    it "raises an error if the docking station is full (20 bike)" do
      20.times { subject.dock_bike(Bike.new) }
      expect{ subject.dock_bike(Bike.new) }.to raise_error "The station is full!"
    end
  end
end
