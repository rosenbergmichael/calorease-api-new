class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.integer :tracker_id
      t.string :name
      t.float :calories

      t.timestamps
    end
  end
end
