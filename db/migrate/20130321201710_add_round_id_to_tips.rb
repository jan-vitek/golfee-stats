class AddRoundIdToTips < ActiveRecord::Migration
  def change
    add_column :tips, :round_id, :integer
  end
end
