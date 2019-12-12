class PicturesController < ApplicationController
  def create
    @promesse = Promess.find(params[:promess_id])
    @promesse.pictures.attach(params[:picture])
    redirect_to(promess_path(@promesse))
  end
end
