gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FlightTest < Minitest::Test

  #
  #                            ___________
  #                                 |
  #                            _   _|_   _
  #                           (_)-/   \-(_)
  #    _                         /\___/\                         _
  #   (_)_______________________( ( . ) )_______________________(_) -mj
  #                              \_____/

  #
  # Dear Developer,
  #
  #   The party was great. I met a bunch of awesome companies there and one of
  #   offered me a job. They have a ping-pong table and have Hawaiian Shirt
  #   Fridays. They are working on a product called CampFlix. It's like Netflix
  #   but for Camping. Plus I've been at this company for a WHOLE six months.
  #
  #   So I guess this is goodbye. I'll be seeing you. Oh yeah, the CEO asked me
  #   to add flights to our system at the start of the week for Friday's demo.
  #   But now that I don't work there I guess it falls on you.
  #
  #                                                 Sincerely,
  #                                                   Minimum Viable Developer
  #
  #   P.S. CampFlix is hiring. I get an iPad if they hire you. Send me your
  #        LinkedIn profile, I'll get you an interview.

  class Flight
    # TODO: Do all the work
  end


  def test_flight_must_be_created_with_seats
    skip

    # TODO: If I wasn't leaving the company I would probably come up with some
    #   way to create all these seats dynamically. Right now I only made 1 row
    #   of seats. But our planes actually have 21 rows of seats.
    #
    #   Maybe I could use ruby's Ranges to solve the problem. Whatever! I'm
    #   going to program in Python starting next week. Ruby is lame anyways.
    #   Hopefully you can figure it out.

    seat_01 = AirlineSeat.new("1A")
    seat_02 = AirlineSeat.new("1B")
    seat_03 = AirlineSeat.new("1C")
    seat_04 = AirlineSeat.new("1D")
    seat_05 = AirlineSeat.new("1E")
    seat_06 = AirlineSeat.new("1F")

    seats = [ seat_01, seat_02, seat_03, seat_04, seat_05, seat_06 ]

    flight = Flight.new(seats)
    assert_equal 21, flight.seats.count
  end

  def test_flight_window_seats_returns_all_the_window_seats
    skip

    seat_01 = AirlineSeat.new("1A")
    seat_02 = AirlineSeat.new("1B")
    seat_03 = AirlineSeat.new("1C")
    seat_04 = AirlineSeat.new("1D")
    seat_05 = AirlineSeat.new("1E")
    seat_06 = AirlineSeat.new("1F")

    seats = [ seat_01, seat_02, seat_03, seat_04, seat_05, seat_06 ]

    flight = Flight.new(seats)
    assert_equal 42, flight.window_seats.count
  end

  def test_flight_window_seats_returns_all_the_aisle_seats
    skip

    seat_01 = AirlineSeat.new("1A")
    seat_02 = AirlineSeat.new("1B")
    seat_03 = AirlineSeat.new("1C")
    seat_04 = AirlineSeat.new("1D")
    seat_05 = AirlineSeat.new("1E")
    seat_06 = AirlineSeat.new("1F")

    seats = [ seat_01, seat_02, seat_03, seat_04, seat_05, seat_06 ]

    flight = Flight.new(seats)
    assert_equal 42, flight.aisle_seats.count
  end

  def test_flight_window_seats_returns_all_the_middle_seats
    skip

    seat_01 = AirlineSeat.new("1A")
    seat_02 = AirlineSeat.new("1B")
    seat_03 = AirlineSeat.new("1C")
    seat_04 = AirlineSeat.new("1D")
    seat_05 = AirlineSeat.new("1E")
    seat_06 = AirlineSeat.new("1F")

    seats = [ seat_01, seat_02, seat_03, seat_04, seat_05, seat_06 ]

    flight = Flight.new(seats)
    assert_equal 42, flight.middle_seats.count
  end

  def test_flight_can_return_the_seat_by_seat_number
    skip

    seat_01 = AirlineSeat.new("1A")
    seat_02 = AirlineSeat.new("1B")
    seat_03 = AirlineSeat.new("1C")
    seat_04 = AirlineSeat.new("1D")
    seat_05 = AirlineSeat.new("1E")
    seat_06 = AirlineSeat.new("1F")

    seats = [ seat_01, seat_02, seat_03, seat_04, seat_05, seat_06 ]

    flight = Flight.new(seats)
    assert_equal seat01, flight.seat("1A")
    assert_equal seat03, flight.seat("1C")
    assert_equal seat04, flight.seat("1D")
    assert_equal seat06, flight.seat("1F")
  end

  #
  # The remaining code here is working code that assists with the above tests
  # You shouldn't have to make changes to the code below this point to make
  # the test to pass. However, you will definitely need to read the code
  #

  class AirlineSeat
    def initialize(seat_number)
      @seat_number = seat_number
    end

    def seat_number
      @seat_number
    end

    def row
      seat_number[0..-2]
    end

    def position
      seat_number[-1]
    end

    def window?
      position == "A" || position == "F"
    end

    def aisle?
      position == "C" || position == "D"
    end

    def middle_seat?
      ! window? && ! aisle?
    end

    def taken?
      @taken
    end

    def taken!
      @taken = true
    end

    def legroom?
      # TODO: Next version of our seats will definitely have legroom. I promise!
      false
    end
  end

end