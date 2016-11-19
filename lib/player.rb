
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

  def get_status
    @status
  end

  def get_last_executed
    @last_executed
  end
end