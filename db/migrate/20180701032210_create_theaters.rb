class CreateTheaters < ActiveRecord::Migration[5.1]
  def change
    create_table :theaters do |t|
      t.string  :name,null: false,index: true,unique: true
      t.string  :area
      t.timestamps
    end
  end
end
