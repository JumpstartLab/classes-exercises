gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AirplaneTest < Minitest::Test

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
  #   As the CEO of Planetastic it is my pleasure to make you the lead developer
  #   on our product. I am very proud of all the work you are doing. I am about
  #   to get on a plane to see our investors. The last demo I did for them was
  #   good but they asked to see more features.
  #
  #   I realized we are going about this the wrong way. A flight having seats
  #   doesn't make any sense. Shouldn't a flight have a airplane and the
  #   airplane have many seats?
  #
  #   I took a CompSci class back in college so I threw together some code to
  #   help you out. I don't think THERE ARE BUGS. I used Microsoft Word as my
  #   editor.
  #
  #   Anyways, I wish I had time to finish this up but I have a presentation
  #   I need to finish for some upcoming Entrepreneur events.
  #
  #                                                 Sincerely,
  #                                                   Minimum Viable CEO
  #


  class Flight
                def initialize(name,plane)
                  @name = name
                  @plane =                      plane
          end

          def plane ; @plane ;            end

  end


  class Airplane
def init(name,seat_count)
         @name=name
        @seat_count=seat_count
      end

    def
  end

  def test_plane_is_created_with_a_type_and_a_seat_count
    skip
    instance = Airplane.new("737",126)
    assert_equal 21, instance.rows
  end

  def test_plane_seats_returns_an_array_of_airline_seats
    skip
    instance = Airplane.new("737",126)
    assert_equal 126, instance.seats.count
    assert_kind_of AirlineSeat, instance.seats.first
  end

  def test_a_flight_is_created_with_a_name_and_plane
    skip
    airplane = Airplane.new("737",126)
    flight = Flight.new("DB123",airplane)
    assert_equal "DB123", flight.name
    assert_equal 126, flight.seats.count
    assert_equal 42, flight.window_seats.count
    assert_equal 42, flight.aisle_seats.count
    assert_equal 42, flight.middle_seats.count
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