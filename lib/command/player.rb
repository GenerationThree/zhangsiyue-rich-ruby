class Player
  @status
  def execute(command)
    @status = command.execute(self)
  end

  def getStatus
    @status
  end
end