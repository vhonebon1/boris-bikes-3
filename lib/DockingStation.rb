require_relative "../lib/bike.rb"


class DockingStation
attr_reader :bike

  def release_bike
    raise "There are no bikes available!" unless @bike
    @bike
    end


  def dock_bike(bike)
    @bike = bike
  end
end
