class PromessesController < ApplicationController

  def index

  end

  def new
  	@promesse = Promess.new
  end

  def create
  	@promesse = Promess.new(content: params[:content], candidat_id: params[:candidat_id])
  	if @promesse.save
  		redirect_to candidat_path(params[:candidat_id])
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

end
