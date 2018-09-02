class Character < ApplicationRecord
    belongs_to :user
    has_many :merits, through: :character_has_merit
    has_many :character_has_merits
    has_many :downtime_actions
    has_many :skill_specialties
    belongs_to :creature_type
    has_many :xp_records
    has_many :xp_expenditures
    has_and_belongs_to_many :equipment
end
