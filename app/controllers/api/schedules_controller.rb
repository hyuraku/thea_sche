class Api::SchedulesController < ApplicationController

  # def get
  #   @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i))
  #   render 'show', formats: 'json', handlers: 'jbuilder'
  # end
  #
  # def show
  #   @schedules = Schedule.where(theater_id: params[:theater_id])
  #   render 'show', formats: 'json', handlers: 'jbuilder'
  # end

  def index
    @schedules = Schedule.where(theater_id: params[:theater_id]) if params[:theater_id]
    @schedules = Schedule.where(picture_id: params[:picture_id]) if params[:picture_id]
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)) if params[:id]
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_date_thea
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(theater_id: params[:theater_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_date_picture
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(picture_id: params[:picture_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_thea_picture
    @schedules = Schedule.where(theater_id: params[:theater_id]).where(picture_id: params[:picture_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_all_data
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(theater_id: params[:theater_id]).where(picture_id: params[:picture_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

end
