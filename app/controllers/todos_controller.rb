class TodosController < ApplicationController

    before_action :find_todo, only: [:show, :destroy]

    def index
        @todos = Todo.all
        render json: @todos
    end

    def show
        render json: @todo
    end

    def create
        @todo = Todo.create(todo_params)
        render json: @todo
    end

    def new
        @todo = Todo.new
        render json: @todo
    end

    def destroy
        @todo.destroy
        render json: @todos
    end

    private

    def todo_params
        params.require(:todo).permit(:date, :item)
    end

    def find_todo
        @todo = todo.find(params[:id])
    end
end
