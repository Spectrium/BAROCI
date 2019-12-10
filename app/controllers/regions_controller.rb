class RegionsController < ApplicationController
  def index
  	@region = Region.all
  end
  def new
  	
  end
  def create
  	@region = Region.new(name: params[:name])
  	if @region.save
  		redirect_to regions_path
  	else
  		render "new"
  	end
  end
  def edit
  	@region = Region.find(params[:id])
  end
  def update
  	@region = Region.find(params[:id])
  	@region.update(name: params[:name])
  	if @region.save
  		redirect_to regions_path
  	else
  		render "edit"
  	end
  end
  def destroy
  	@region = Region.find(params[:id])
  	@commune = Commune.where(region: @region)
  	@candidat = Candidat.where(region: @region)
  	@commune.destroy_all
  	@candidat.destroy_all
  	@region.destroy
  	redirect_to regions_path
  end
end
