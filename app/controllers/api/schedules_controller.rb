class Api::SchedulesController < ApplicationController

  def get
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i))
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def show
    @schedules = Schedule.where(theater_id: params[:theater_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def index
    @schedules = Schedule.where(work_id: params[:work_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_date_thea
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(theater_id: params[:theater_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_date_work
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(work_id: params[:work_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_thea_work
    @schedules = Schedule.where(theater_id: params[:theater_id]).where(work_id: params[:work_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_all_data
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(theater_id: params[:theater_id]).where(work_id: params[:work_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

end
