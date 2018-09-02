class CreateSkillSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_specialties do |t|
      t.string :name
      t.string :skill

      t.timestamps
    end
  end
end
