class SeasController < ApplicationController
  #define your controller actions here
  
  def welcome
  
  end

  def index 
    @seas = Sea.all
    
  end

  def show #individual record
    @sea = Sea.find(params[:id])
  end

  def new #display form for create a new record
    @sea = Sea.new
  end

  def create #save new record when clicked submit on "new"
      @sea = Sea.new(allowed_params)
      
      if @sea.save
          redirect_to seas_path
      else
          redender "new"
      end
  end

  def edit #display form for the existing record
      @sea = Sea.find(params[:id])
  end

  def update #update the existing modified record
      @sea = Sea.find(params[:id])

      if @sea.update_attributes(allowed_params)
          redirect_to seas_path
      else
          redender "new"
      end
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.delete
    redirect_to seas_path
  end



  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def allowed_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end



end
