class CreateMerits < ActiveRecord::Migration[5.1]
  def change
    create_table :merits do |t|
      t.string :name
      t.string :description
      t.boolean :requires_specification
      t.boolean :requires_description
      t.string :allowed_ratings

      t.timestamps
    end
  end
end
