class CommentsController < ApplicationController

  before_action :authenticate_user!
  before_action :is_user
  before_action :is_admin, only: [:destroy]

  def index
  end

  def new
  	@engagement = Engagment.find(params[:engagment_id])
  	@comment = @engagement.comments.all
  end

  def create
  	@comment = Comment.new(content: params[:content], user_id: current_user.id, engagment_id: params[:engagment_id])
  	if @comment.save
  		redirect_to new_engagment_comment_path(params[:engagment_id])
  	else
  		render "new"
  	end
  end

  def edit
  	@engagement = Engagment.find(params[:engagment_id])
  	@comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
  	@comment.update(content: params[:content], user_id: current_user.id, engagment_id: params[:engagment_id])
  	if @comment.save
  		redirect_to new_engagment_comment_path(params[:engagment_id])
  	else
  		render "edit"
  	end
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to new_engagment_comment_path(params[:engagment_id])
  end

  private
  def is_user
  	@comment = Comment.find(params[:id])
    if user_signed_in?
      if current_user == @comment.user
        return true
      else
        redirect_to home_path
      end
    end
  end

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
