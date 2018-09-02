class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :game_order
      t.datetime :downtime_actions_open
      t.datetime :downtime_actions_close
      t.boolean :downtime_responses_visible

      t.timestamps
    end
  end
end
