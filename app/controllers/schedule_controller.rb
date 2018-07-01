class ScheduleController < ApplicationController
  def index
    # @schedules = Schedule.all
    @theaters = Theater.all
    works_id = []
    #ハッシュ作って格納しましょう
    for schedule in Schedule.all do
      works_id.push(schedule.picture.id)
    end
    works_id = (works_id.uniq).sort
    @works=Picture.where(id: works_id).order('name ASC')
    #@schedule単体のwork.nameを列に投入
    #重複分は消して並び替えて表示させる
    @dates=[]
    for i in 0..2 do
      @dates.push(Time.zone.today + i)
    end
  end
end
