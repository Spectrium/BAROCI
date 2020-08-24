class SurveysController < ApplicationController

  before_action :authenticate_user!, only: [:new,:create]

  def index
    @commune = Commune.find(params[:commune_id])
    @candidat = @commune.candidats.all
    tab = []
  	@candidat.each do |candidat|
  		tab << candidat.resultat
  	end
  	max = tab.max()
  	@candidat_valid = Candidat.find_by(resultat: max)
  	@promesse = Promess.where(candidat: @candidat_valid)
    if @candidat.length != 0
      var = @candidat_valid.promesses.all 
      @total = 0
      @suivi = 0
      if var.length != 0                    
        var.each do |pro| 
          @total += pro.suivis.count 
          @suivis = Suivi.where(promess: pro)
          @suivi += ((@suivis.where(finished: true).count) ) 
        end 
      end
    end
  end

  def new
  end

  def create
    val = params[:name]
    @surveytest = Survey.where(engagment_id: params[:engagement])
    resultat = 0
    @surveytest.each do |test|
      if test.user == current_user
        resultat = 1
        break
      else
        resultat = 0
      end
    end
    if resultat == 0
      if val == "1"
        @survey = Survey.new(agree: true, disagree: false, hesitat: false,user_id: current_user.id , engagment_id: params[:engagement])
      elsif val == "2"
        @survey = Survey.new(agree: false, disagree: true, hesitat: false,user_id: current_user.id , engagment_id: params[:engagement])
      else
        @survey = Survey.new(agree: false, disagree: false, hesitat: true,user_id: current_user.id , engagment_id: params[:engagement])
      end
      if @survey.save
        redirect_to commune_surveys_path(params[:commune_id])
      else
        redirect_to "/"
      end
    else
      @survey = Survey.where(engagment_id: params[:engagement])
      @survey.each do |test|
        if test.user = current_user
          @surveycurrent = test
          break
        end
      end
      if val == "1"
        if @surveycurrent.agree == true
          @surveycurrent.destroy
        else
          @surveycurrent.update(agree: true, disagree: false, hesitat: false)
        end
      elsif val == "2"
        if @surveycurrent.disagree == true
          @surveycurrent.destroy
        else
          @surveycurrent.update(agree: false, disagree: true, hesitat: false)
        end
      else
        if @surveycurrent.hesitat == true
          @surveycurrent.destroy
        else
          @surveycurrent.update(agree: false, disagree: false, hesitat: true)
        end
      end
      redirect_to commune_surveys_path(params[:commune_id])
    end
  end
  
end
