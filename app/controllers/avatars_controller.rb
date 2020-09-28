class AvatarsController < ApplicationController
  before_action :test
  def create
    @commune = Commune.find(params[:commune_id])
    @candidat = @commune.candidats.find(params[:candidat_id])
    
    # @candidat = Candidat.find(params[:candidat_id])
    @candidat.avatars.attach(params[:avatar])
    redirect_to(commune_candidat_path(@commune.id, @candidat.id))
  end
  private
  def test
    if (params[:avatar] == '') 
      @commune = Commune.find(params[:commune_id])
      @candidat = @commune.candidats.find(params[:candidat_id])
      redirect_to(commune_candidat_path(@commune.id, @candidat.id))
    else
      return true
    end
  end
end
