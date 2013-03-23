class RemoveRoundIdFromTips < ActiveRecord::Migration
  def up
    remove_column :tips, :round_id
  end

  def down
    add_column :tips, :round_id, :integer
  end
end
