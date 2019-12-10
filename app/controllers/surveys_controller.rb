class SurveysController < ApplicationController

  def index
    @commune = Commune.find(params[:commune_id])
    @candidat = @commune.candidats.all
    tab = []
  	@candidat.each do |candidat|
  		tab << candidat.resultat
  	end
  	max = tab.max()
  	@candidat_valid = Candidat.find_by(resultat: max)
  	@promesse = Promess.where(candidat: @candidat_valid)
  end

  def new
  	
  end

  def create
  	
  end
  
end
