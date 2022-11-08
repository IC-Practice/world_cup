require 'pry'

class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    player_arr = []
    @teams.each do |team|
      if team.eliminated == false
        team.players.each do |player|
          if player.position == position
            player_arr << player
          end
        end
      end
    end
    player_arr
  end

  def all_players_by_position
    player_hash = {
      "forward" => [],
      "midfielder" => [],
      "defender" => []
    }
      @teams.each do |team|
        team.players.each do |player|
          if player.position == "forward"
            player_hash["forward"] << player
          elsif player.position == "midfielder"
            player_hash["midfielder"] << player
          elsif player.position == "defender"
            player_hash["defender"] << player
          end
      end
    end
    player_hash
  end

end
