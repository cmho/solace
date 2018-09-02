class CreateXpRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :xp_records do |t|
      t.integer :character_id
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
