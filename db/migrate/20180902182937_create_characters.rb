class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :user_id
      t.integer :creature_type_id
      t.boolean :is_npc, default: false
      t.string :virtue
      t.string :vice
      t.integer :association_id

      t.integer :strength
      t.integer :dexterity
      t.integer :stamina
      t.integer :intelligence
      t.integer :wits
      t.integer :resolve
      t.integer :presence
      t.integer :manipulation
      t.integer :composure

      t.integer :academics
      t.integer :computer
      t.integer :crafts
      t.integer :investigation
      t.integer :medicine
      t.integer :occult
      t.integer :politics
      t.integer :science

      t.integer :athletics
      t.integer :brawl
      t.integer :drive
      t.integer :firearms
      t.integer :larceny
      t.integer :stealth
      t.integer :survival
      t.integer :weaponry

      t.integer :animal_ken
      t.integer :empathy
      t.integer :expression
      t.integer :intimidation
      t.integer :persuasion
      t.integer :socialize
      t.integer :streetwise
      t.integer :subterfuge

      t.integer :size
      t.integer :speed
      t.integer :defense
      t.integer :initiative_mod
      t.integer :armor_ballistic
      t.integer :armor_general

      t.integer :health
      t.integer :willpower

      t.text :public_blurb

      t.timestamps
    end
  end
end
