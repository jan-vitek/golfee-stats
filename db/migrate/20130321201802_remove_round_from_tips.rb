class RemoveRoundFromTips < ActiveRecord::Migration
  def up
    remove_column :tips, :round
  end

  def down
    add_column :tips, :round, :integer
  end
end
