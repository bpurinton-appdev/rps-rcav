class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @result = "tied"
    elsif @comp_move == "paper"
      @result = "lost"
    elsif @comp_move == "scissors"
      @result = "won"
    end

    render({ :plain => "Hello, world!" })
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @result = "won"
    elsif @comp_move == "paper"
      @result = "tied"
    elsif @comp_move == "scissors"
      @result = "lost"
    end
  end

  def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @result = "lost"
    elsif @comp_move == "paper"
      @result = "won"
    elsif @comp_move == "scissors"
      @result = "tied"
    end
  end

  def homepage
    render({ :plain => "Hello, world!" })
  end
end
