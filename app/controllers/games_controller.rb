class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new game_params
    if @game.save
      flash[:notice] = "New game result added."
      redirect_to games_path
    else
      render 'new'
    end
  end

  def edit
    @game = Game.find params[:id]
  end

  def update
    @game = Game.find params[:id]
    if @game.update game_params
      flash[:notice] = "Your game data has been updated."
    else
      render 'edit'
    end
  end

  def show
    @game = Game.find params[:id]
  end

  def destroy
    @game = Game.find params[:id]
    @game.destroy
    flash[:notice] = "Your game has been deleted."
    redirect_to root_url
  end

private
  def game_params
    params.require(:game).permit(:champion, :role, :kills, :deaths,
                                 :assists, :creep_score, :gold, :result)
  end
end