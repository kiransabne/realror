class CategoriesController < ApplicationController
	before_filter :authenticate_admin!
	before_action :set_category, only: [:show, :edit, :update, :destroy]

	layout "admin"
	
	  def index
		@categories = Category.all
	  end

	  def show
	  end

	  def new
	    @category = Category.new(:parent_id => params[:parent_id]) 
	  end

	  def edit
	  
	  end

	  def create
	    @category = Category.new(category_params)

	    respond_to do |format|
	      if @category.save
	        format.html { redirect_to categories_path, notice: 'category created.' }
	      else
	        format.html { render action: 'new' }
	      end
	    end
	  end 

	  def update
	    respond_to do |format|
	      if @category.update(category_params)
	        format.html { redirect_to categories_path, notice: 'The category was successfully updated.' }
	      else
	        format.html { render action: 'edit' }
	      end
	    end
	  end

	  def destroy
	    @category.destroy
	    respond_to do |format|
	      format.html { redirect_to categories_path }
	    end
	  end

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :parent_id)
    end

end
