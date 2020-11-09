class GamesController < ApplicationController
  def new
    @letters = Array.new(9) { ('A'..'Z').to_a.sample }
  end

    def english_word?(word)
        response = open("https://wagon-dictionary.herokuapp.com/#{word}")
        json = JSON.parse(response.read)
        return json['found']
    end
  def score
    p params[:word]
    @english = english_word?(params[:word])
end

end
