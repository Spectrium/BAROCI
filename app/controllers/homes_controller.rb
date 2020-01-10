class HomesController < ApplicationController
  def index
  	@actualite = Actuality.all
  	@candidat = Candidat.all
  	@suivi1 = 0 
    @suivi2 = 0 
    @suivi3 = 0 
    @total = 0
  	@candidat.each do |candidat|
  		candidat.promesses.each do |promesses|
	        @total += promesses.suivis.count 
	        @suivi = Suivi.where(promess: promesses)
	        @suivi1 += (@suivi.where(start: true)).count
	        @suivi2 += ((@suivi.where(transition: true).count))
	        @suivi3 += ((@suivi.where(finished: true).count) ) 
      	end 
    end   
  end
end
