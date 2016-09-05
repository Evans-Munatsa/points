class NoobsController < ApplicationController
  before_action :set_player
  before_action :set_noob, only: [:show, :edit, :update, :destroy]

  def new
    @noob = @player.noobs.build
  end

  def create
    @noob = @player.noobs.build(noob_params)
    if @noob.save
      redirect_to root_path
    else
      render new
    end
  end

  def show
  end


  private

  def noob_params
    params.require(:noob).permit(:points)
  end

  def set_player
    @player = Player.find(params[:player_id])
  end

  def set_noob
    @noob = @player.noobs.find(params[:id])
  end
end
