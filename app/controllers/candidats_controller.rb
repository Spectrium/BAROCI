class CandidatsController < ApplicationController
  def index
    @candidat = Candidat.all
  end
end
