class GamesController < ApplicationController
  def index
    @games = Game.all
    @game = Game.new
  end

  def create
    @game = Game.new
    if @game.save
      redirect_to game_path(id: @game.id)
    else
      render :new
    end
  end

  def show
    @game = Game.find params[:id]
  end

  def play
    @game = Game.find params[:id]

    if @game.tile(params[:position].to_i).present?
      render :sneaky
      return
    end
    
    @game.place(params[:position].to_i, "X")
    @game.computer_play
    @game.save
  end
end
