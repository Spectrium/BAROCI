class SearchsController < ApplicationController
  def index
  	@resultat = Commune.where("name LIKE ?" , "%#{@@result}%")
  	@result1 = @@result
  end

  def create
  	@@result = params[:search].downcase
  	redirect_to searchs_path
  end
end
