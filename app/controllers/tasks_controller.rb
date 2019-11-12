class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:id])
    @task.save
    redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:id])
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
