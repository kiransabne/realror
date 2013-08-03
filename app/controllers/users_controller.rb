class UsersController < ApplicationController
	before_filter :authenticate_admin!
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	layout "admin"
	

	  def index
		@users = User.all
	  end

	  def show
	  end

	  def new
	    @user = User.new
	  end

	  def edit
	  
	  end

	  def create
	    @user = User.new(user_params)

	    respond_to do |format|
	      if @user.save
	        format.html { redirect_to @user, notice: 'User was successfully created.' }
	      else
	        format.html { render action: 'new' }
	      end
	    end
	  end 

	  def update
	    respond_to do |format|
	      if @user.update(user_params)
	        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
	      else
	        format.html { render action: 'edit' }
	      end
	    end
	  end

	  def destroy
	    @user.destroy
	    respond_to do |format|
	      format.html { redirect_to users_path }
	    end
	  end

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email)
    end


end
