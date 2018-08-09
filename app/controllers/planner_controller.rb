class PlannerController < ApplicationController
	def index
	#	@user = current_user
	#	@months = @user.months.all 
	# had to comment those out when not signed in why?
	end

	def show
		@months = current_user.months.all
	end
	
end