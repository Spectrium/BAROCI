class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :is_user,except: [:index]
	before_action :is_admin,only: [:destroy]
    def index
        @user = User.all
    end
    def show
    	@user = User.find(params[:id])
    end
    def edit
    	@user = User.find(params[:id])
    end
    def update
    	@user = User.find(params[:id])
    	if @user == User.first
    		@user.update(is_admins: true)
    	end
    	@user.update(full_name: params[:name], age: params[:age], cin: params[:cin], adress: params[:adress] )
    	if @user.save
    		redirect_to user_path(@user.id)
    	else
    		render 'new'
    	end
    end
    def destroy
    	@user = User.find(params[:id])
    	coms = @user.comments.all
		surv = @user.surveys.all 
		coms.destroy_all
		surv.destroy_all
		@user.destroy
		redirect_to home_path	
    end
    private
    def is_user
    	if user_signed_in?
    		@user = User.find(params[:id])
    		if @user == current_user || current_user.is_admins == true
    			return true
    		else
    			redirect_to "/"
    		end
    	end
    end
    def is_admin
    	if user_signed_in?
    		if current_user.is_admins == true
    			return true
    		else
    			redirect_to "/"
    		end
    	end
    end
end
