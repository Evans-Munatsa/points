class AssassinsController < ApplicationController
  before_action :set_player
  before_action :set_assassin, only: [:show, :edit, :update, :destroy]

  def new
    @assassin = @player.assassins.build
  end

  def create
    @assassin = @player.assassins.build(assassin_params)
    if @assassin.save
      redirect_to root_path
    else
      render new
    end
  end

  def show
  end


  private

  def assassin_params
    params.require(:assassin).permit(:points)
  end

  def set_player
    @player = Player.find(params[:player_id])
  end

  def set_assassin
    @assassin = @player.assassins.find(params[:id])
  end
end
