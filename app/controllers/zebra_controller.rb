class ZebraController < ApplicationController
  
  def rules
    render({ :template => "game_templates/rules"})
  end

  def rock_moves

    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample
  
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome == "lost"
    else
      @outcome = "won"
    end
    #erb(:rock_view)
    render({ :template => "game_templates/play_rock"})
  end 

  def paper_moves
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome == "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/play_paper"})
  end

  def scissors_moves
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome == "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/play_scissors"})
  end
  
end
