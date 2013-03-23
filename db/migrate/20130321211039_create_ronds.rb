class CreateRonds < ActiveRecord::Migration
  def change
    create_table :ronds do |t|
      t.integer :number

      t.timestamps
    end
  end
end
