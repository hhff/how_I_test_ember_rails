class TodosController < ApplicationController
  respond_to :json

  def index
    respond_with Todo.all
  end

  def show
    respond_with Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update todo_params
    respond_with @todo
  end

  def create
    @newTodo = Todo.create todo_params
    respond_with @newTodo
  end

  def destroy
    Todo.find(params[:id]).destroy
    respond_with Todo.all
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :is_completed)
  end


end
