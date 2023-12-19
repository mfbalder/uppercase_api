class WordsController < ApplicationController
  def uppercase
    render json: { :data => params[:word].upcase }
  end
end
