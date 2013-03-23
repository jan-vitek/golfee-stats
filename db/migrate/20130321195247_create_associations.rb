class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.integer :golfer_id
      t.integer :player_id
      t.integer :tip_id

      t.timestamps
    end
  end
end
