class TasksController < ApplicationController
  # before_action :set_board, only: [:show]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # def show
  # end

  def new
    @board = Board.find(params[:board_id])
    @task = @board.tasks.build
    @task.user = current_user
  end

  def create
    @board = Board.find(params[:board_id])
    @task = @board.tasks.build(task_params)
    @task.user = current_user
    if @task.save
      redirect_to board_path(@board), notice: 'タスクを保存しました'
    else
      flash.now[:error] = 'タスクの保存に失敗しました'
      render :new
    end
  end

  # def edit
  #   @board = current_user.boards.find(params[:id])
  # end

  # def update
  #   @board = current_user.boards.find(params[:id])
  #   if @board.update(board_params)
  #     redirect_to root_path, notice: '更新しました'
  #   else
  #     flash.now[:error] = '更新に失敗しました'
  #     render :edit
  #   end
  # end

  # def destroy
  #   board = current_user.boards.find(params[:id])
  #   board.destroy!
  #   redirect_to root_path, notice: '削除しました'
  # end

  private
  def task_params
    params.require(:task).permit(:name, :description, :deadline)
  end

  # def set_board
  #   @board = Board.find(params[:id])
  # end

end
