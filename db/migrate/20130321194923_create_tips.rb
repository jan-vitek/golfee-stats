class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :round

      t.timestamps
    end
  end
end
