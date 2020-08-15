class PicturesController < ApplicationController
  before_action :test
  def create
    @promesse = Promess.find(params[:promess_id])
    @promesse.pictures.attach(params[:picture])
    redirect_to(promess_path(@promesse))
  end
  private
  def test
    if (params[:picture] != '') 
      @promesse = Promess.find(params[:promess_id])
      redirect_to(promess_path(@promesse))
    else
      return true
    end
  end
end
