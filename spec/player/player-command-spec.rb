require 'minitest/autorun'
require '../../lib/player'

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

  it 'should record last executed command' do
    @rollcommand.expect(:execute, "WAIT_RESPONSE", [@player])
    @rollcommand.expect(:must_equal, true, [@rollcommand])
    @player.execute(@rollcommand)
    @player.getStatus.must_equal "WAIT_RESPONSE"
    @player.get_last_executed.must_equal @rollcommand
  end
end