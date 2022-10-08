class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = set_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(strong_params)
    redirect_to task_path(@task)
  end

  def edit
    @task = set_task
  end

  def update
    @task = set_task
    @task.update(strong_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = set_task
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def strong_params
    params.require(:task).permit(:title, :details)
  end
end
