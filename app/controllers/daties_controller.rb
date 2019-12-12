class DatiesController < ApplicationController

  before_action :is_admin, except: [:index, :show]

  def index
  	@date = Daty.last
    limite = (@date.end_date - @date.start_date).to_f
    ##calcul de difference de temps
    ##calcul second
    # if limite < 60
    #   @second = limite.to_i
    # else
    #   s = limite/60
    #   sc = s.to_i
    #   @second = ((s - sc)*60).to_i
    #   if s < 60
    #     @min = s.to_i
    #   else
    #     mm = s/60
        

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
  		redirect_to daty_path(@date.id)
  	else
  		render "edit"
  	end
  end

  def destroy
  	@date = Daty.find(params[:id])
  	@date.destroy
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
