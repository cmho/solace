class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :description
      t.integer :size
      t.integer :durability
      t.integer :equipment_type_id

      t.timestamps
    end
  end
end
