class Player
  attr_reader :name,:position

  def initialize(info_hash)
    @name = info_hash[:name]
    @position = info_hash[:position]
  end

end
