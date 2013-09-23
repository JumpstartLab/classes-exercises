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
  #   the lights on for another few weeks before our next demo to our new
  #   Masters...er, I mean Investors.
  #
  #   I had a little more time to think about seats and it seems strange that
  #   they didn't have an actual seat number and we're not attached to a flight.
  #   I wasn't able to finish everything and I am pretty sure THERE ARE BUGS
  #   because I didn't have a chance to finish before our big StartUp Week party.
  #
  #   Aren't these company t-shirts so soft? Oh, yeah would you finish and fix
  #   this code for me?
  #
  #                                                 Sincerely,
  #                                                   Minimum Viable Developer


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

  def test_airline_seat_has_method_seat_number
    skip
    assert AirlineSeat.instance_methods.include?(:seat_number)
  end

  def test_airline_seat_has_a_seat_number
    skip
    instance = AirlineSeat.new("11A")
    assert_equal "11A", instance.seat_number
  end

  def test_airline_seat_has_method_row
    skip
    assert AirlineSeat.instance_methods.include?(:row)
  end

  def test_airline_seat_has_the_correct_row
    skip
    instance = AirlineSeat.new("1A")
    assert_equal "1", instance.row

    instance = AirlineSeat.new("10A")
    assert_equal "10", instance.row
  end

  def test_airline_seat_has_method_position
    skip
    assert AirlineSeat.instance_methods.include?(:position)
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
    refute instance.aisle?
    refute instance.middle_seat?

    instance = AirlineSeat.new("2F")
    assert instance.window?
    refute instance.aisle?
    refute instance.middle_seat?
  end

  def test_airline_seats_on_the_aisles_are_aisle_seats
    skip
    instance = AirlineSeat.new("6C")
    assert instance.aisle?
    refute instance.window?
    refute instance.middle_seat?

    instance = AirlineSeat.new("13D")
    assert instance.aisle?
    refute instance.window?
    refute instance.middle_seat?
  end

  def test_airline_seats_in_the_middle_are_middle_seats
    skip
    instance = AirlineSeat.new("2B")
    assert instance.middle_seat?
    refute instance.window?
    refute instance.aisle?

    instance = AirlineSeat.new("4E")
    assert instance.middle_seat?
    refute instance.window?
    refute instance.aisle?
  end

  def test_airline_seat_is_not_taken_when_first_created
    skip
    instance = AirlineSeat.new("22B")
    refute instance.taken?
  end

  def test_airline_seat_can_be_marked_as_taken
    skip
    instance = AirlineSeat.new("12F")
    instance.taken!
    assert instance.taken?
  end

end
