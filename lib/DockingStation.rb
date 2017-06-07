require_relative "../lib/bike.rb"


class DockingStation


  def initialize
    @bike = []
  end

  def release_bike
    raise "There are no bikes available!" if @bike.empty?
    @bike.pop
  end


  def dock_bike(bike)
    raise "The station is full!" if @bike.count > 20
    @bike << bike
  end
end
