class PropsController < ApplicationController
	before_action :verify_logged_in

  def index
  	@props = Prop.all.sort_by(&:created_at).reverse
  end

  def new
  	@prop = Prop.new
  end

  def create
  	@prop = Prop.new(params.require(:prop).permit(:author, :recipient, :reason))
  	if @prop.save
  		redirect_to prop_path(@prop)
  	else
  		render 'new'
  	end
  end

  def show
  	@prop = Prop.find(params[:id])
  end

  def edit
  	@prop = Prop.find(params[:id])
  end

  def update
  	@prop = Prop.find(params[:id])
  	if @prop.update_attributes(params.require(:prop).permit(:recipient, :reason))
  		redirect_to prop_path(@prop)
  	else
  		flash[:error] = "Your update didn't go through."
  		render 'edit'
  	end
  end

  def destroy
  	Prop.find(params[:id]).destroy
  	redirect_to props_path
  end

  private
  	def verify_logged_in
  		if !current_user
  			flash[:error] = "You must log in before you can make awesome props!"
  			redirect_to new_auth_path
  		end
  	end


end
