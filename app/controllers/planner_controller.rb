class PlannerController < ApplicationController
	def index
		@months = current_user.months
		@months = Month.all.order('created_at DESC')
	end
end