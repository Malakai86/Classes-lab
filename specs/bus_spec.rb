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

    @passengers = [@person1,@person2, @person3]

  end

def test_route_number()
  assert_equal(23, @bus.route_number)
end

def test_drive()
  assert_equal("Brum brum", @bus.drive)
end


end
