class CreateCharacterHasMerits < ActiveRecord::Migration[5.1]
  def change
    create_table :character_has_merits do |t|
      t.integer :character_id
      t.integer :merit_id
      t.integer :rating
      t.string :specification
      t.text :description

      t.timestamps
    end
  end
end
