class CommunesController < ApplicationController

  before_action :is_admin, except: [:index]

  def index
  	@region = Region.find(params[:region_id])
  	@commune = @region.communes.all
  end

  def new
  	
  end

  def create
  	@region = Region.find(params[:region_id])
  	@commune = Commune.new(name: params[:name].downcase, region: @region)
    if @commune.save
      flash[:success] = "Un commune a été ajouter avec succes!"
  		redirect_to region_communes_path(@region.id)
  	else
  		render "new"
  	end
  end

  def edit
  	@commune = Commune.find(params[:id])
  end

  def update
  	@region = Region.find(params[:region_id])
  	@commune = Commune.find(params[:id])
  	@commune.update(name: params[:name].downcase,region: @region)
    if @commune.save
      flash[:success] = "Modification commune avec succes!"
  		redirect_to region_communes_path(@region.id)
  	else
  		render "edit"
  	end
  end

  def destroy
  	@commune = Commune.find(params[:id])
  	@candidat = Candidat.where(commune: @commune)
  	@candidat.destroy_all
    @commune.destroy
    flash[:success] = "Suppression commune avec succes!"
  	redirect_to region_communes_path(params[:region_id])
  end

  private

  def is_admin
    if user_signed_in?
      if current_user.is_admins == true
        return true
      else
        redirect_to home_path
      end
    end
  end

end
