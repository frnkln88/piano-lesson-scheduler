class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :user_id 
      t.integer :lesson_id
      t.string :songname
      t.string :date
      t.string :time
      t.timestamps
    end
  end
end
