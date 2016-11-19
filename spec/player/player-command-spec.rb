require 'minitest/autorun'
require '../../lib/player'

describe Player do
  def setup
    @command = MiniTest::Mock.new
    @respond = MiniTest::Mock.new
    @player = Player.new
  end

  it 'should be wait response after commsnd' do
    @command.expect(:execute, "WAIT_RESPONSE", [@player])
    @player.execute(@command)
    @player.get_status.must_equal "WAIT_RESPONSE"
  end

  it 'should record last executed command' do
    @command.expect(:execute, "WAIT_RESPONSE", [@player])
    @command.expect(:must_equal, true, [@command])
    @player.execute(@command)
    @player.get_status.must_equal "WAIT_RESPONSE"
    @player.get_last_executed.must_equal @command
  end

  it 'should be the same status with respond return' do
    @respond.expect(:execute, "END_TURN", [@player])
    @player.respond(@respond)
    @player.get_status.must_equal "END_TURN"
  end

end