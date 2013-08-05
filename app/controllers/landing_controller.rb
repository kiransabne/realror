class LandingController < ApplicationController
	Devise::SessionsController.layout 'application'
	
	def index
		@categories = Category.roots

		def resource_name
	      :user
	    end

	    def resource
	      @resource ||= User.new
	    end

	    def devise_mapping
	      @devise_mapping ||= Devise.mappings[:user]
	    end
		
	end



end
