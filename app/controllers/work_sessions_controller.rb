class WorkSessionsController < ApplicationController

  def index
    work_sessions = WorkSession.all
    render json: work_sessions
  end

  def create
    work_session = WorkSession.create(work_session_params)
    render json: work_session
  end

  def update
    work_session = WorkSession.find(params[:id])
    work_session.update(work_session_params)
  end

  def destroy
    WorkSession.destroy(params[:id])
  end

  private

    def work_session_params
      params.require(:work_session).permit(:start_time, :end_time, :total_time, :note, :authenticity_token)
    end

end
