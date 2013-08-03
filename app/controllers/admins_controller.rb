class AdminsController < ApplicationController
	before_filter :authenticate_admin!
	before_action :set_admin, only: [:show, :edit, :update, :destroy]

	layout "admin"
	

	  def index
		@admin = Admin.all
	  end

	  def show
	  end

	  def new
	    @admin = Admin.new
	  end

	  def edit
	  
	  end

	  def create
	    @admin = Admin.new(admin_params)

	    respond_to do |format|
	      if @admin.save
	        format.html { redirect_to @admin, notice: 'admin was successfully created.' }
	      else
	        format.html { render action: 'new' }
	      end
	    end
	  end 

	  def update
	    respond_to do |format|
	      if @admin.update(admin_params)
	        format.html { redirect_to admins_path, notice: 'admintest was successfully updated.' }
	      else
	        format.html { render action: 'edit' }
	      end
	    end
	  end

	  def destroy
	    @admin.destroy
	    respond_to do |format|
	      format.html { redirect_to admins_path }
	    end
	  end

    def set_admin
      @admin = Admin.find(params[:id])
    end

    def admin_params
      params.require(:admin).permit(:email)
    end

end