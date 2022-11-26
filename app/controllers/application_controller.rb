class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

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

    render({ :template => "game_templates/user_rock.html.erb" })
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

    render({ :template => "game_templates/user_paper.html.erb" })
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

    render({ :template => "game_templates/user_scissors.html.erb" })
  end

  def homepage
    render({ :template => "game_templates/rules.html.erb" })
  end
end
