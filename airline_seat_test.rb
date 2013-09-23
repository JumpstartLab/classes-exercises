gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AirlineSeatTest < Minitest::Test

  #                                           ********
  #                                          *      *
  #                                         *      *
  #      ***********************************      *
  #    *  (  )      () () () () () ()            *
  #  *           *        *                   *
  # *             *        *               *
  #  ************************************
  #                  *       *
  #                   *********
  #
  # Dear Developer,
  #
  #   We closed another round of funding. Woot! I guess we're able to keep the
  #   the two of us around and the lights on for another few weeks before our
  #   next demo to our new masters...er, I mean investors.
  #
  #   We need to model airline seats so we can allow the booking agents to  put
  #   people in them. I started to build something but I wasn't able to finish
  #   everything and I am pretty sure THERE ARE BUGS. I would finish it but
  #   I am heading out to the big "Start Up Week" party.
  #
  #   Oh, yeah would you finish and fix this code for me?
  #
  #                                                 Sincerely,
  #                                                   Minimum Viable Developer
  #
  #   P.S. Aren't these company t-shirts so soft?


  class AirlineSeat
    def initialize(seat_number)
      @seat_number = seat_number
    end

    def seat_number
      @seat_number
    end

    def row
      # TODO: I don't think this works for all seats
      seat_number[0]
    end

    # TODO: I am pretty sure that all our planes are 6 seats wide. So that means
    #   that seats A and F are window seats.
    #
    #
    #                          | A B C || D E F |
    def window?
      true
    end

    def legroom?
      # TODO: Next version of our seats will definitely have legroom. I promise!
      false
    end
  end

  #
  # These are the test for the above code. As you are ready to fix bugs, finish
  # features, and build new features remove the `skip` line from each test.
  #

  def test_airline_seat_has_method_seat_number
    skip
    assert AirlineSeat.instance_methods.include?(:seat_number), "AirlineSeat does not have a seat_number method"
  end

  def test_airline_seat_has_a_seat_number
    skip
    instance = AirlineSeat.new("11A")
    assert_equal "11A", instance.seat_number
  end

  def test_airline_seat_has_method_row
    skip
    assert AirlineSeat.instance_methods.include?(:row), "AirlineSeat does not have a row method"
  end

  def test_airline_seat_with_single_digit_row_has_the_correct_row
    skip
    instance = AirlineSeat.new("1A")
    assert_equal "1", instance.row
  end

  def test_airline_seat_with_double_digit_row_has_the_correct_row
    instance = AirlineSeat.new("10A")
    assert_equal "10", instance.row
  end

  def test_airline_seat_has_method_position
    skip
    assert AirlineSeat.instance_methods.include?(:position), "AirlineSeat does not have a position method"
  end

  def test_airline_seat_has_a_position
    skip
    instance = AirlineSeat.new("9F")
    assert_equal "F", instance.position
  end

  def test_airline_seat_has_correct_position
    skip
    instance = AirlineSeat.new("36C")
    assert_equal "C", instance.position
  end

  def test_airline_seats_on_the_windows_are_window_seats
    skip
    instance = AirlineSeat.new("10A")
    assert instance.window?
    refute instance.aisle?, "Should be a window not an aisle seat"
    refute instance.middle_seat?, "Should be a window not a middle seat"

    instance = AirlineSeat.new("2F")
    assert instance.window?
    refute instance.aisle?, "Should be a window not an aisle seat"
    refute instance.middle_seat?, "Should be a window not a middle seat"
  end

  def test_airline_seats_on_the_aisles_are_aisle_seats
    skip
    instance = AirlineSeat.new("6C")
    assert instance.aisle?
    refute instance.window?, "Should be an aisle not a window seat"
    refute instance.middle_seat?, "Should be an aisle not a middle seat"

    instance = AirlineSeat.new("13D")
    assert instance.aisle?
    refute instance.window?, "Should be an aisle not a window seat"
    refute instance.middle_seat?, "Should be an aisle not a middle seat"
  end

  def test_airline_seats_in_the_middle_are_middle_seats
    skip
    instance = AirlineSeat.new("2B")
    assert instance.middle_seat?
    refute instance.window?, "Should be a middle not a window seat"
    refute instance.aisle?, "Should be a middle not an aisle seat"

    instance = AirlineSeat.new("4E")
    assert instance.middle_seat?
    refute instance.window?, "Should be a middle not a window seat"
    refute instance.aisle?, "Should be a middle not an aisle seat"
  end

  def test_airline_seat_is_not_taken_when_first_created
    skip
    instance = AirlineSeat.new("22B")
    refute instance.taken?, "The seat should not already be taken"
  end

  def test_airline_seat_can_be_marked_as_taken
    skip
    instance = AirlineSeat.new("12F")
    instance.taken!
    assert instance.taken?, "The seat should be taken"
  end

end
