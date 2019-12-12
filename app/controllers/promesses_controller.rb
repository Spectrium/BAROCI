class PromessesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :is_admin, except: [:index]
  def index

  end

  def show
    @promesse = Promess.find(params[:id])
    @promess = @promesse.pictures.all
    # @pictur = @promess.find(params[:pictures_id])
    # @picture = @pictur.record_id
    # @prome = Promess.find(@picture)
   
  end

  def new
  	@promesse = Promess.new
  end

  def create
    @commune = Commune.find(params[:commune_id])
    @candidat = @commune.candidats.find(params[:candidat_id])

  	@promesse = Promess.new(content: params[:content], candidat_id: @candidat.id)
  	if @promesse.save
      redirect_to commune_candidat_path(@commune.id, @candidat.id)
  	else
  		render "new"
  	end
  end

  def edit
  	@promesse = Promess.find(params[:id])
  end

  def update
  	@promesse = Promess.find(params[:id])
  	@promesse.update(content: params[:content], candidat_id: params[:candidat_id])
  	if @promesse.save
  		redirect_to candidat_path(params[:candidat_id])
  	else
  		render "edit"
  	end
  end

  def destroy
  	@promesse = Promess.find(params[:id])
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
