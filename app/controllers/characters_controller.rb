class CharactersController < ApplicationController
  def index
    @characters = Character.all

  end

  def create

    @character = Character.new(character_params)

    @television_show = TelevisionShow.find(params[:television_show_id])
    @character.television_show = @television_show

      if @character.save
        flash[:notice] = "Success"
        redirect_to "/television_shows/#{params[:television_show_id]}"
      else
        flash.now[:notice] = "Your character couldn't be saved."
        render "television_shows/show"
      end
  end


  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to '/characters'
  end

  private

  def character_params
    params.require(:character).permit(:character_name, :actor_name, :description)
  end

end
