class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :date
      t.time :time
      t.date :end_date
      t.time :end_time
      t.string :type
      t.string :title
      t.text :intro
      t.string :photo

      t.string :photo_file_name
      t.integer :photo_file_size
      t.string :photo_content_type
      t.datetime :photo_updated_at
     
      t.timestamps
    end
  end

  def self.down
    drop
    table :events
  end
end
