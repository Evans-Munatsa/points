class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
  end

  def update
    if @player.update(params[:player].permit(:name, :assassin, :noob))
      redirect_to @player
    else
      render 'edit'
    end
  end

  def destroy
    @player.destroy
    redirect_to @player
  end

  private

  def player_params
    params.require(:player).permit(:name, :assassin, :noob)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
