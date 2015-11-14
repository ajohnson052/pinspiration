class PinsController < ApplicationController

  #new
  def new
    @pin = Pin.new
    @board = Board.find(params[:board_id])
  end

  #create
  def create
    @board = Board.find(params[:board_id])
    @pin = @board.pins.new(pin_params)
    if @pin.save
      flash[:notice] = "You have successfully created a pin"
      redirect_to user_board_path(current_user, @board)
    else
      render :new
    end
  end

  #edit
  def edit
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
  end

  #update
  def update
    @pin = Pin.find(params[:id])
    @board = Board.find(params[:board_id])
    if @pin.update(pin_params)
      flash[:notice] = "You have successfully updated this pin"
    end
    render :edit
  end

  #destroy
  def destroy
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to user_board_path(current_user, @board)
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :image).merge(user_id: current_user.id)
  end
end
