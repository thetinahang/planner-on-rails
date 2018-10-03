class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #skip_before_action :verify_authenticity_token, if: :json_request?
  

  	def after_sign_in_path_for(resource)
  		request.env['omniauth.origin'] || root_path
	end

	def json_request?
	    request.format.json?
	end

end
