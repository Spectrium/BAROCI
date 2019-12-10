class CommunesController < ApplicationController
  def index
  	@region = Region.find(params[:region_id])
  	@commune = @region.communes.all
  end
  def new
  	
  end
  def create
  	@region = Region.find(params[:region_id])
  	@commune = Commune.new(name: params[:name], region: @region)
  	if @commune.save
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
  	@commune.update(name: params[:name],region: @region)
  	if @commune.save
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
  	redirect_to region_communes_path(params[:region_id])
  end
end
