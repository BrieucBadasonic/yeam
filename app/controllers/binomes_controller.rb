class BinomesController < ApplicationController
  def index
    @binomes = Binome.all
    @binome = Binome.new
  end

  def create

  end
end
