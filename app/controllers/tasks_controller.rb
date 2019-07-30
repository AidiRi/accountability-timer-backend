class TasksController < ApplicationController

  def index
    user =
    tasks = Task.all
    render json: tasks
  end

  def create
    task = Task.create(task_params)

    render json: task
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)

    render json: task
  end

	def destroy
		Task.destroy(params[:id]);
	end

  private

  def task_params
    params.require(:task).permit(:title, :status, :work_session_id, :authenticity_token)
  end
end
