class BoardsController < ApplicationController
  #index
  def index
    @boards = current_user.boards
  end

  #new
  def new
    @board = Board.new
  end

  #create
  def create
    @board = current_user.boards.new(board_params)
    if @board.save
      flash[:notice] = "A board was successfully created"
      redirect_to user_board_path(current_user, @board)
    else
      render :new
    end

  end

  #show
  def show
    @board = Board.find(params[:id])
  end

  #edit
  def edit
    @board = Board.find(params[:id])
  end

  #update
  def update
    @board = Board.find(params[:id])
    if @board.update(board_params)
      flash[:notice] = "A board was successfully updated"
      redirect_to user_board_path(current_user, @board)
    else
      render :edit
    end

  end

  #destroy
  private
  def board_params
    params.require(:board).permit(:title)
  end
end
