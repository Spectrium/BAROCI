class ActualitiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :is_admin, except: [:index, :show]
  before_action :find_nil, only: [:create]

  def index
    @actualite = Actuality.all
  end

  def show
    @actualite = Actuality.find(params[:id])
    @actuphoto = @actualite.actuphotos.all
  end

  def new
    @actualite = Actuality.new
  end

  def create
    @actualite = Actuality.new(title: params[:title], description: params[:description])
    if @actualite.save
      flash[:success] = "Nouvelle actualiter ajouter avec succes!"
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
      flash[:success] = "Modification fait"
      redirect_to actuality_path(params[:id])
    else
      render "new"
    end
  end

  def destroy
    @actualite = Actuality.find(params[:id])
    @actualite.destroy
    flash[:success] = "Actualiter supprimer!"
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
  def find_nil
    if params[:title] == '' && params[:description] == ''
      render "new"
    else
      return true
    end
  end

end

