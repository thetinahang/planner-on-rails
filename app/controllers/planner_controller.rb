class PlannerController < ApplicationController
	def index
		@months = Month.first_five

	end
end