class DatiesController < ApplicationController

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

end
