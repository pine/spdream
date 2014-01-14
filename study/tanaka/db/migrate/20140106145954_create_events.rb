class CreateEvents < ActiveRecord::Migration
  def self.up
    add_column :schedules, :name, :string
    
  end
end
