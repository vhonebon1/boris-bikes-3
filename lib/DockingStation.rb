require_relative "../lib/bike.rb"


class DockingStation

DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize
  @bikes = []
  end

  def release_bike
    raise "There are no bikes available!" if empty? 
    @bikes.pop
  end

  def dock_bike(bike)
    raise "The station is full!" if full? 
    @bikes << bike
  end

private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

private
  def empty?
    @bikes.length < 1
  end

end


