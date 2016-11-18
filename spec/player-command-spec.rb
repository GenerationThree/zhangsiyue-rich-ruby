require 'minitest/autorun'
require '../lib/command/player'

describe Player do
  def setup
    @rollcommand = MiniTest::Mock.new
    @player = Player.new
end

  it "should be wait response after commsnd" do
    @rollcommand.expect(:execute, "WAIT_RESPONSE", [@player])
    @player.execute(@rollcommand)
    @player.getStatus.must_equal "WAIT_RESPONSE"
    end
end