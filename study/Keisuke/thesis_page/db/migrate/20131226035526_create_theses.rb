class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :title
      t.string :author
      t.integer :studentID
      t.integer :year
      t.boolean :state

      t.timestamps
    end
  end
end
