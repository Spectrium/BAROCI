class ActuphotosController < ApplicationController

  def create
  	@actualite = Actuality.find(params[:actuality_id])
	@actualite.actuphoto.attach(params[:actuphoto])
	redirect_to(actuality_path(@actualite))
  end

end
