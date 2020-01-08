class ActualitiesController < ApplicationController

  def index
  end

  def show
    @actualite = Actuality.find(params[:id])
  end

  def new
    @actualite = Actuality.new
  end

  def create
    @actualite = Actuality.new(title: params[:title], description: params[:description])
    if @actualite.save
      redirect_to actuality_path(@actualite.id)
    else
      render "new"
    end
  end

  def edit
    @actualite = Actuality.find(params[:id])
  end

  def update
    @actualite = Actuality.find(params[:id])
    @actualite.update(title: params[:title], description: params[:description])
    if @actualite.save
      redirect_to actuality_path(params[:id])
    else
      render "new"
    end
  end

  def destroy
    @actualite = Actuality.find(params[:id])
    @actualite.destroy
    redirect_to home_path
  end

end

