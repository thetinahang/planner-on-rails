class PlannerController < ApplicationController
	def index
		@months = current_user.months.first_five

	end
end