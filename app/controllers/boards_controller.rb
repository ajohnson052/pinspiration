class BoardsController < ApplicationController
  #index
  def index
    @boards = current_user.boards
  end

  #new

  #create

  #show
  def show
    @board = Board.find(params[:id])
  end

  #edit

  #update

  #destroy

end
