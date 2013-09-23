gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AirplaneTest < Minitest::Test

  #
  #                                                                  .____   __ _
  #     __o__   _______ _ _  _                                     /     /
  #     \    ~\                                                  /      /
  #       \     '\                                         ..../      .'
  #        . ' ' . ~\                                      ' /       /
  #       .  _    .  ~ \  .+~\~ ~ ' ' " " ' ' ~ - - - - - -''_      /
  #      .  <#  .  - - -/' . ' \  __                          '~ - \
  #       .. -           ~-.._ / |__|  ( )  ( )  ( )  0  o    _ _    ~ .
  #     .-'                                               .- ~    '-.    -.
  #    <                      . ~ ' ' .             . - ~             ~ -.__~_. _ _
  #      ~- .       N121PP  .          . . . . ,- ~
  #            ' ~ - - - - =.   <#>    .         \.._
  #                        .     ~      ____ _ .. ..  .- .
  #                         .         '        ~ -.        ~ -.
  #                           ' . . '               ~ - .       ~-.
  #                                                       ~ - .      ~ .
  #                                                              ~ -...0..~. ____
  #   Cessna 402  (Wings)
  #   by Dick Williams, rjw1@tyrell.net
  #
  #
  # Dear Planetastic Team,
  #
  #   It has been a pleasure being your CEO for these past 9 months. It is with
  #   a heavy heart that I am leaving the company. Tom, from our board of
  #   directors, is going to step in and be acting CEO until a suitable
  #   replacement is found.
  #
  #   Tom and I want to assure you that during this transition time that
  #   everything will continue smoothly. We still have our important demo
  #   to the Airline companies at the end of the week. Which should be no
  #   problem because we have our lead developer putting the final touches on
  #   the new booking features.
  #
  #   Let me thank you again for your effort supporting me. I wish you all the
  #   best on this and all your future projects. The sky is most definitely the
  #   limit for every single one of you.
  #
  #                                                 Sincerely,
  #                                                   Minimum Viable CEO
  #
  #   P.S. You can reach me, if you need anything, at ceo@campflix.com

  class Flight
    def initialize(name,plane)
      @name = name
      @plane = plane
    end

    def name
      @name
    end

    def plane
      @plane
    end

    def seats
      plane.seats
    end

    def window_seats
      plane.window_seats
    end

    def middle_seats
      plane.middle_seats
    end

    def aisle_seats
      plane.aisle_seats
    end
  end



  def test_flight_returns_the_available_seats
    skip

    airplane = Airplane.new("737",126)
    flight = Flight.new("FG556",airplane)

    assert_equal 126, flight.available_seats.count
  end

  def test_flight_can_locate_a_seat_by_name
    skip

    airplane = Airplane.new("737",126)
    flight = Flight.new("FG556",airplane)

    found_seat = flight.seat("1A")

    assert_equal "1A", found_seat.seat_number
    assert_equal "1", found_seat.row
    assert_equal "1", found_seat.position
    assert found_seat.window?
  end

  def test_flight_can_book_a_seat
    skip

    airplane = Airplane.new("737",126)
    flight = Flight.new("FG556",airplane)

    flight.book("9C")
    found_seat = flight.seat("9C")

    assert found_seat.taken?
  end

  def test_flight_returns_the_correct_number_of_available_seats
    skip

    airplane = Airplane.new("737",126)
    flight = Flight.new("FG556",airplane)

    flight.book("9A")
    flight.book("9B")
    flight.book("9C")

    assert_equal 123, flight.available_seats.count
    assert_equal 41, flight.available_window_seats.count
    assert_equal 41, flight.available_middle_seats.count
    assert_equal 41, flight.available_aisle_seats.count
  end


  #
  # The remaining code here is working code that assists with the above tests
  # You shouldn't have to make changes to the code below this point to make
  # the test to pass. However, you will definitely need to read the code
  #

  class Airplane
    def initialize(name,seat_count)
      @name = name
      seats_per_row = 6
      @rows = seat_count / seats_per_row
      @seats = []
      rows.times do |row|
        [ 'A', 'B', 'C', 'D', 'E', 'F'].each do |position|
          @seats.push AirlineSeat.new("#{row}#{position}")
        end
      end
    end

    def rows
      @rows
    end

    def seats
      @seats
    end

    def seat(seat_number)
      seats.find do |seat|
        seat.seat_number == seat
      end
    end

    def window_seats
      window_seats = []

      seats.each do |seat|
        if seat.window?
          window_seats.push(seat)
        end
      end

      return window_seats
    end

    def middle_seats
      middle_seats = []

      seats.each do |seat|
        if seat.middle_seat?
          middle_seats.push(seat)
        end
      end

      return middle_seats
    end

    def aisle_seats
      aisle_seats = []

      seats.each do |seat|
        if seat.window?
          aisle_seats.push(seat)
        end
      end

      aisle_seats
    end
  end


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