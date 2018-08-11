class PlannerController < ApplicationController
	def index
	end

	def show
		@months = current_user.months.all
	end
	
end