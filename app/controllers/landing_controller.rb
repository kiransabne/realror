class LandingController < ApplicationController
	Devise::SessionsController.layout 'application'
	
	def index
		 @categories = Category.roots 
         @products = Product.all
	end



end
