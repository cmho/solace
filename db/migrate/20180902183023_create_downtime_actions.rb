class CreateDowntimeActions < ActiveRecord::Migration[5.1]
  def change
    create_table :downtime_actions do |t|
      t.string :title
      t.integer :character_id
      t.integer :game_id
      t.text :description
      t.integer :action_type_id
      t.string :goal
      t.string :assets
      t.text :additional_notes

      t.timestamps
    end
  end
end
