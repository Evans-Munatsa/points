class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all.order('created_at DESC')
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to @player
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
    if @player.update(params[:player].permit(:name))
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

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name)
  end
end
