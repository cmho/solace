class CreateXpExpenditures < ActiveRecord::Migration[5.1]
  def change
    create_table :xp_expenditures do |t|
      t.integer :character_id
      t.text :diff
      t.integer :amount
      t.boolean :is_approved

      t.timestamps
    end
  end
end
