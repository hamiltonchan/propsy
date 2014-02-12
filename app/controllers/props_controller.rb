class PropsController < ApplicationController
  def index
  	@props = Prop.all.sort_by(&:created_at).reverse
  	

  end

  def new
  end

  def show
  end
end
