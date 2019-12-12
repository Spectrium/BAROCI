class CandidatsController < ApplicationController

  def index
    @commune = Commune.find(params[:commune_id])
    @candidat = @commune.candidats.all
  end

  def show
    @commune = Commune.find(params[:commune_id])
	@candidat = @commune.candidats.find(params[:id])
	@avatar = @candidat.avatars.all  
  end

  def new
  	@candidat = Candidat.new
  end

  def create
  	@candidat = Candidat.new(name: params[:full_name], parti: params[:mouvence], resultat: params[:resultat])
  	@region = Region.all
  	r = 0
  	@region.each do |region|
  		if region.name == params[:region]
  			r = 1
  			break
  		else
  			r = 0
  		end
  	end
  	if r == 1
  		region_candidat = Region.find_by(name: params[:region])
  	else
  		region_candidat = Region.create(name: params[:region])
  	end
  	@commune = Commune.all
  	c = 0
  	@commune.each do |commune|
  		if commune.name == params[:commune]
  			c = 1
  			break
  		else
  			c = 0
  		end
  	end
  	if c == 1
  		commune_candidat = Commune.find_by(name: params[:commune])
  	else
  		commune_candidat = Commune.create(name: params[:commune], region_id: region_candidat.id)
  	end
  	@candidat.region = region_candidat
  	@candidat.commune = commune_candidat

  	if @candidat.save
  		redirect_to commune_candidat_path(commune_candidat.id, @candidat.id)
  	else
  		render "new"
  	end
  end

  def edit
  	@candidat = Candidat.find(params[:id])
  end

  def update
  	@candidat = Candidat.find(params[:id])
  	@candidat.update(name: params[:full_name], parti: params[:mouvence], resultat: params[:resultat])
  	@region = Region.all
  	r = 0
  	@region.each do |region|
  		if region.name == params[:region]
  			r = 1
  			break
  		else
  			r = 0
  		end
  	end
  	if r == 1
  		region_candidat = Region.find_by(name: params[:region])
  	else
  		region_candidat = Region.create(name: params[:region])
  	end
  	@commune = Commune.all
  	c = 0
  	@commune.each do |commune|
  		if commune.name == params[:commune]
  			c = 1
  			break
  		else
  			c = 0
  		end
  	end
  	if c == 1
  		commune_candidat = Commune.find_by(name: params[:commune])
  	else
  		commune_candidat = Commune.create(name: params[:commune], region_id: region_candidat.id)
  	end
  	@candidat.region = region_candidat
  	@candidat.commune = commune_candidat
  	
  	if @candidat.save
  		redirect_to commune_candidat_path(commune_candidat.id, @candidat.id)
  	else
  		render "edit"
  	end
  end

  def destroy
  	@candidat = Candidat.find(params[:id])
  	@promesse = Promess.where(candidat_id: @candidat.id)
  	@promesse.destroy_all
  	@candidat.destroy
  	redirect_to home_path
  end

end
