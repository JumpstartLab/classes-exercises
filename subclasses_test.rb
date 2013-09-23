gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SubClassesTest < Minitest::Test

  #
  # To make the tests pass, these classes needs to gain some new functionality
  # that is defined in the tests. Remove `skip` from the tests and update
  # this class to make the tests pass.
  #

  class AirlineSeat

    # Dear Developer,
    #
    #   The position of the seat is simplified here to mean :window, :aisle, or
    #   :middle_seat we ran out of time. In the future we need to actually model
    #   the real seat number to the plane. Right now we need to get this code out
    #   the door.
    #
    #                                                 Love,
    #                                                   Minimum Viable Developer
    def initialize(position)
      @position = position
    end

    def position
      @position
    end

    def window?
      position == :window
    end

    def aisle?
      position == :aisle
    end

    def legroom?
      false
    end
  end

  #
  # Here are the tests that describe the functionality that you need to build
  #

  # You get this test for free... it's already passing.
  def test_airline_seat_has_instance_method_window?
    assert AirlineSeat.instance_methods.include?(:window?)
  end

  def test_airline_seat_has_instance_method_aisle?
    skip
    # Check to see if an AirlineSeat has method :aisle?
  end

  def test_airline_seat_has_instance_method_middle_seat?
    skip
    # Check to see if an AirlineSeat has method :middle_seat?
    # Create the method middle_seat?
  end

  def test_coach_seat_has_instance_method_window?
    skip
    assert CoachSeat.instance_methods.include?(:window?)
  end

  def test_coach_seat_has_instance_method_aisle?
    skip
    # TODO: Write the test to ensure CoachSeat has an instance method `aisle?`
  end

  def test_coach_seat_has_instance_method_middle_seat?
    skip
    # TODO: Write the test to ensure CoachSeat has an instance method `middle_seat?`
  end

  def test_business_class_seat_has_instance_method_window?
    skip
    assert BusinessClassSeat.instance_methods.include?(:window?)
  end

  def test_business_class_seat_has_instance_method_aisle?
    skip
    # TODO: Write the test to ensure BusinessClassSeat has an instance method `aisle?`
  end

  def test_business_class_seat_has_instance_method_middle_seat?
    skip
    # TODO: Write the test to ensure BusinessClassSeat has an instance method `middle_seat?`
  end

end
