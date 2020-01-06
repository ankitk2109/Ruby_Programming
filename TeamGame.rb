module Labeller
  def label
    p @name + " is a sort of game."
  end
end

class TeamGame
  include Labeller
  attr_accessor :name, :team_size, :no_teams
  
  def initialize(name,team_size,no_teams)
    @name = name
    @team_size = team_size
    @no_teams = no_teams
  end

  def show_name
    p @name
  end 

  def show_team_size
    p @team_size
  end

  def show_no_teams
    p @no_teams
  end

end

class RugbyGame < TeamGame
  include Labeller
  attr_accessor :name, :team_size, :no_teams, :played_in, :cup 
  def initialize(name,team_size,no_teams, played_in, cup)
    @name = name
    @team_size = team_size
    @no_teams = no_teams
    @played_in = played_in
    @cup = cup
  end

  def show_all
    p "The sports is played in #{@played_in}"
  end

  def cup_is
    p "The cup name is #{@cup}"
  end
end

foo = RugbyGame.new("union", 12, 2, "europe","heinekin")
foo.show_name
foo.cup_is
foo.show_all
foo.label