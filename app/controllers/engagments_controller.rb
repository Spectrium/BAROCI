class EngagmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :is_admin, ecxept: [:index]

  def index
    @promesse = Promess.find(params[:promess_id])
  	@engagement = @promesse.engagments.all
  end

  def new
  	@engagement = Engagment.new
  end

  def create
    @promesse = Promess.find(params[:promess_id])
  	@engagement = Engagment.new(content: params[:content], promess_id: @promesse.id)
	if @engagement.save
		redirect_to promess_engagments_path(@promesse.id)
	else
		render "new"
	end
  end

  def edit
  	@engagement = Engagment.find(params[:id])
  end

  def update
  	@engagement = Engagment.find(params[:id])
    @promesse = Promess.find(params[:promess_id])
  	@engagement.update(content: params[:content], promess_id: @promesse.id)
	if @engagement.save
		redirect_to promess_engagments_path(@promesse.id)
	else
		render "edit"
	end
  end

  def destroy
  	@promesse = Promess.find(params[:promess_id])
  	@engagement = Engagment.find(params[:id])
  	@survey = Survey.where(engagment_id: @engagement.id)
  	@comment = Comment.where(engagment_id: @engagement.id)
  	@survey.destroy_all
  	@comment.destroy_all
  	@engagement.destroy
  	redirect_to promess_engagments_path(@promesse.id)
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
