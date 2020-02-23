
class SeasController < ApplicationController

  before_action(:set_seas, only: [:edit, :show, :update, :destroy])
  def index 
    @seas = Sea.all
  end 

  def new 
    @sea = Sea.new 
  end 

  def show 
    # @sea = set_seas
  end 

  def edit 
    # @sea = set_seas 
  end

  def create 
    @sea = Sea.create(sea_params)
    redirect_to seas_path
  end 

  def update 
    @sea.update(sea_params)
    redirect_to seas_path(@sea)
  end 

  def destroy
    @sea.destroy 
    redirect_to seas_path
  end 
  #define your controller actions here


  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def set_seas
    @sea = Sea.find(params[:id])
  end 

  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
