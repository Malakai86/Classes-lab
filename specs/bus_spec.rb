require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')
class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(23, "Inverness")
    @passenger1 = Person.new("Bob", 23)
    @passenger2 = Person.new("Jill", 67)
    @passenger3 = Person.new("Jane", 40)

  end

def test_route_number()
  assert_equal(23, @bus.route_number)
end

def test_drive()
  assert_equal("Brum brum", @bus.drive)
end

def test_count_total_passengers
  assert_equal(0, @bus.total_passengers)
end

def test_add_passengers
  @bus.add_passenger(@passenger2)
  assert_equal(1, @bus.total_passengers)
end

 def test_remove_passenger()
   @bus.add_passenger(@passenger1)
   @bus.add_passenger(@passenger2)
   @bus.remove_passenger(@passenger2)
   assert_equal(1, @bus.total_passengers)
end

def test_empty_bus()
  @bus.add_passenger(@passenger1)
  @bus.add_passenger(@passenger2)
  @bus.add_passenger(@passenger3)
  @bus.empty_bus
  assert_equal(0, @bus.total_passengers)
end
 def test_pick_up_from_stop
   bus_stop = BusStop.new("Stop_1")
   bus_stop.add_passenger_to_queue(@passenger1)
   bus_stop.add_passenger_to_queue(@passenger2)
   bus_stop.add_passenger_to_queue(@passenger3)
   pick_up_from_stop("Stop_1")
assert_equal(3, @bus.total_passengers)

 end
 end
