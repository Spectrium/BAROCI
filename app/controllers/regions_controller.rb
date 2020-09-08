class RegionsController < ApplicationController

  before_action :is_admin, except: [:index]

  def index
  	@region = Region.all
  end

  def new
  	
  end

  def create
  	@region = Region.new(name: params[:name])
    if @region.save
      flash[:success] = "Nouvelle Region ajouter avec succes!"
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
      flash[:success] = "Region modifier avec succes!"
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
    flash[:success] = "Suppression region avec succes!"
  	redirect_to regions_path
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
