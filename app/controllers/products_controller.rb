class ProductsController < ApplicationController
	before_filter :authenticate_admin!
	before_action :set_product, only: [:show, :edit, :update, :destroy]
	before_filter :collection_for_parent_select, only: [:new, :update]

	layout "admin"
	

	  def index
		@products = Product.all
	  end

	  def show
	  end

	  def new
	    @product = Product.new
	  end

	  def edit
	  
	  end

	  def create
	    @product = Product.new(product_params)

	    respond_to do |format|
	      if @product.save
	        format.html { redirect_to products_path, notice: 'Product created.' }
	      else
	        format.html { render action: 'new' }
	      end
	    end
	  end 

	  def update
	    respond_to do |format|
	      if @product.update(product_params)
	        format.html { redirect_to products_path, notice: 'The Product was successfully updated.' }
	      else
	        format.html { render action: 'edit' }
	      end
	    end
	  end

	  def destroy
	    @product.destroy
	    respond_to do |format|
	      format.html { redirect_to products_path }
	    end
	  end

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :descrioption, :category_id, :price)
    end

    def collection_for_parent_select
    	@categories_array = Category.all.map { |category| [category.name, category.id] }
  	end

  	def ancestry_options(items)
	    result = []
	    items.map do |item, sub_items|
	      result << [yield(item), item.id]
	      #this is a recursive call:
	      result += ancestry_options(sub_items) {|i| "#{'-' * i.depth} #{i.name}" }
	    end
	    result
  	end

end
