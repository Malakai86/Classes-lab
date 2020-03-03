require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

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
  @bus.add_passengers(@passenger2)
  assert_equal(1, @bus.total_passengers)
end

end
