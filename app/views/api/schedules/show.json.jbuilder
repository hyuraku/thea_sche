json.array! @schedules do |schedule|
  json.work_name      schedule.picture.name
  json.screen_name    schedule.screen_name
  json.schedule_day   schedule.schedule_day
  json.theater_name   schedule.theater.name
  json.start_time     schedule.start_time
  json.end_time       schedule.end_time
  json.work_minutes   schedule.picture.minutes
end
