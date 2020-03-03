require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

def setup
  @bus_stop = BusStop.new("stop 1")

  @passenger1 = Person.new("Bob", 23)
  @passenger2 = Person.new("Jill", 67)
  @passenger3 = Person.new("Jane", 40)
end

def test_add_person_to_queue
  @bus_stop.add_passenger(@passenger1)
  assert_equal(1, @bus_stop.count_passengers)
end








end
