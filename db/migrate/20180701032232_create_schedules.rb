class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.references :picture, index: true, null: false, foreign_key: true
      t.references :theater, index: true, null: false, foreign_key: true
      t.datetime :schedule_day,   null: false
      t.string   :screen_name,    null: false
      t.string   :start_time,     null: false
      t.string   :end_time,       null: false
      t.datetime :screening_date
      t.timestamps
    end
  end
end
