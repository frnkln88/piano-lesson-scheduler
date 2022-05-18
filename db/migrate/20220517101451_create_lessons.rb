class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.integer :duration
      t.string :start_date
      t.string :start_time
      t.timestamps
    end
  end
end
