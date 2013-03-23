class AddTempPointsToGolfers < ActiveRecord::Migration
  def change
    add_column :golfers, :temp_points, :integer
  end
end
