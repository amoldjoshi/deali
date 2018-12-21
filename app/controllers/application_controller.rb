class ApplicationController < ActionController::Base
 	protect_from_forgery with: :exception
 

 	layout "application"

  	rescue_from CanCan::AccessDenied do |exception|
       #flash[:error] = exception.message
       flash[:error] = "Access Denied."
       redirect_to root_url
    end
  	
    rescue_from ActiveRecord::RecordNotFound do |exception|    
	  	flash[:error] = exception.message    
	  	klass = params[:controller].classify    
	  	url = url_for(:controller => params[:controller])    
	  	request.env["HTTP_REFERER"] ||= url    
	  	redirect_to :back  
    end 

end
