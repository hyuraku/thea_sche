class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string   :name,       null: false,index: true,unique: true
      t.integer  :minutes,    null: false
      t.timestamps
    end
  end
end
