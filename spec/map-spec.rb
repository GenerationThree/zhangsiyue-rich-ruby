require 'minitest/autorun'
require '../lib/map'

describe Map do

  def setup
    @start = MiniTest::Mock.new
    @destination = MiniTest::Mock.new
    @places = Array[@@start, @@destination]
    @map = Map.new(@@places)

    @destination.expect(:must_equal, true, [@destination])
  end

  it 'should find destination' do
    @map.find_destination(@start, 1).must_equal @destination
  end
end