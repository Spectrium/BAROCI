class SuivisController < ApplicationController
	before_action :authenticate_user!
	before_action :is_admin

	def index
		@commune = Commune.find(params[:commune_id])
  		@candidat = @commune.candidats.find(params[:candidat_id])
	end
	def new
		
	end
	def create
		val = params[:name]
		@suividone = Suivi.find_by(promess_id: params[:promess_id])
		if val == "0"
			if @suividone == nil
				@suivi = Suivi.new(start: true, finished: false, transition: false, promess_id: params[:promess_id])
				@suivi.save
			else
				if @suividone.start == true
					@suividone.destroy
				else
					@suividone.update(start: true, finished: false, transition: false)
				end
			end
		else
			if @suividone == nil
				@suivi = Suivi.new(start: false, finished: true, transition: false, promess_id: params[:promess_id])
				@suivi.save
			else
				if @suividone.finished == true
					@suividone.destroy
				else
					@suividone.update(start: false, finished: true, transition: false)
				end
			end
		end
		redirect_to commune_candidat_path(params[:commune],params[:candidat])
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
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
