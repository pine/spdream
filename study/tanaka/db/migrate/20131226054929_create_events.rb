class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.date :end_date
      t.time :end_time
      t.integer :type
      t.string :title
      t.text :intro

      t.timestamps
    end
  end
end
