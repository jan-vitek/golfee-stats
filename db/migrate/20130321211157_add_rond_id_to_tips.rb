class AddRondIdToTips < ActiveRecord::Migration
  def change
    add_column :tips, :rond_id, :integer
  end
end
