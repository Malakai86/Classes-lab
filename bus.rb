class Bus
attr_reader :route_number
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def total_passengers()
    return @passengers.length
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def remove_passenger(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    @passengers = []
  end

end
