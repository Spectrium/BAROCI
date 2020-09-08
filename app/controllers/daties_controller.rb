class DatiesController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin, except: [:index, :show]

  def index
  	@date = Daty.all
  end

  def show
  	@date = Daty.find(params[:id])
  end

  def new
  	@date = Daty.new
  end

  def create
  	@date = Daty.new(start_date: params[:start_date], end_date: params[:end_date])
    if @date.save
      flash[:success] = "Date enregitrer avec succes!"
  		redirect_to daty_path(@date.id)
    else
  		render "new"
  	end
  end

  def edit
  	@date = Daty.find(params[:id])
  end

  def update
  	@date = Daty.find(params[:id])
  	@date.update(start_date: params[:start_date], end_date: params[:end_date])
    if @date.save
      flash[:success] = "Mise à jours du date avec succes!"
  		redirect_to daty_path(@date.id)
  	else
  		render "edit"
  	end
  end

  def destroy
  	@date = Daty.find(params[:id])
    @date.destroy
    flash[:success] = "Date supprimer!"
  	redirect_to home_path
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
