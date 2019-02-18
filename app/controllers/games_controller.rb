require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.sample(10)
  end

  def score
    answer_array = params[:name].split
    answer_array.each do |l|
      if answer_array.index(l).nil?
        @score = 0
      else
        answer_array.delete(l)
      end
    end

    url = "https://wagon-dictionary.herokuapp.com/#{params[:name]}"
    api_response = JSON.parse(open(url).read)
    if api_response["found"] == true
      @score = params[:name].length
    else
      @score = 0
    end
  end
end
    # const score_check = (query) => {
    #   fetch(`https://wagon-dictionary.herokuapp.com/${query}`)
    #     .then(response => response.json())
    #     .then((data) => {
    #       if data.found == true
    #         @score = data.length
    #       else
    #         @score = 0
    #       end
    #     };
    # };
# <ActionController::Parameters {"authenticity_token"=>"GTtwyVrmwfMZM8DfY4pJtEW1bjmLPPscRcAHaXpqataVjgVB9msn9viN3WUbc3+jkPug1Za5u5150q1e9dQtDg==", "name"=>"job", "controller"=>"games", "action"=>"score"} permitted: false>
