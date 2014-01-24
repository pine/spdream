class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :comment
      t.integer :value_good, :default => '0'
      t.integer :value_bad, :default => '0'
      t.integer :value_book, :default => '0'
      t.boolean :enabled, :default => false
      t.timestamp :date
      t.references :book
      t.boolean :deleted, :default => false
      t.foreign_key :book, dependent: :delete

      t.timestamps
    end
    add_index :reviews, :book_id
  end
end
