class AddRondIdToAssocs < ActiveRecord::Migration
  def change
    add_column :assocs, :rond_id, :integer
  end
end
