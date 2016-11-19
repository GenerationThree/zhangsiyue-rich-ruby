
class Player
  @status
  @last_executed

  def execute(command)
    @last_executed = command
    @status = command.execute(self)
  end

  def respond(response)
    @status = response.execute(self)
  end

  def getStatus
    @status
  end

  def get_last_executed
    @last_executed
  end
end