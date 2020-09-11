class Api::GamesController < ApplicationController
  
  def name_action
    name = params["name"][0].upcase
    if name == "A"
      @message = "Hey your name starts with the first letter of the alphabet!"
    end
    render "name.json.jb"
  end

  def guess_a_number_action
    number = params["number"].to_i
    puts "Guess a number between 1 and 100"
    if number == 2
      @message = "That is the correct number!"
    elsif number <= 2
      @message = "Higher"
    elsif number >= 2
      @message = "Lower"
    end
    render "number_game.json.jb"
  end

end
