class BusStop
attr_reader :name, :queue

def initialize(name)

  @name = name
  @queue = []
end

def count_passengers()
  return @queue.length()
end

def add_passenger(passenger)
  @queue.push(passenger)
end
end
