class PropsController < ApplicationController
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

end
