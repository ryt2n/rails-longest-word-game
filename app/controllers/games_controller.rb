class GamesController < ApplicationController
  def new
    @letters = 10.times { value << rand(26).chr }
  end

  def score
  end
end
