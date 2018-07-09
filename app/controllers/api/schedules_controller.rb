class Api::SchedulesController < ApplicationController

  def index
    @schedules = Schedule.where(theater_id: params[:theater_id]) if params[:theater_id]
    @schedules = Schedule.where(picture_id: params[:picture_id]) if params[:picture_id]
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)) if params[:id]
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def index_two_item
    if params[:id]
      if params[:theater_id]
        @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(theater_id: params[:theater_id])
      elsif params[:picture_id]
        @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(picture_id: params[:picture_id])
      end
    else
      @schedules = Schedule.where(theater_id: params[:theater_id]).where(picture_id: params[:picture_id])
    end
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get_all_data
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i)).where(theater_id: params[:theater_id]).where(picture_id: params[:picture_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

end
