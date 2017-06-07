require_relative "../lib/bike.rb"


class DockingStation

  attr_reader :bikes
  
  def initialize
    @bikes = []
  end

  def release_bike
    raise "There are no bikes available!" if @bikes.empty?
    @bikes.pop
  end


  def dock_bike(bike)
    raise "The station is full!" if @bikes.length >= 20
    @bikes << bike
  end

end
