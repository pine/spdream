class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :comment
      t.integer :value_good
      t.integer :value_bad
      t.boolean :enabled
      t.timestamp :date
      t.references :book
      t.boolean :deleted

      t.timestamps
    end
    add_index :reviews, :book_id
  end
end
