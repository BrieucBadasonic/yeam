class BinomesController < ApplicationController
  def index
    @binomes = Binome.all
    @binome = Binome.new
  end
end
