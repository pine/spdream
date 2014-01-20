class RemoveTeacheridFromTheses < ActiveRecord::Migration
  def up
    remove_column :theses, :teacher_id
  end

  def down
    add_column :theses, :teacher_id, :integer
  end
end
