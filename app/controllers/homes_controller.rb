class HomesController < ApplicationController
  def index
  	@actualite = Actuality.all
  end
end
