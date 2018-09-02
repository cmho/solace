class Character < ApplicationRecord
    has_many :equipments
    has_many :merits, through: :character_has_merit
    has_many :character_has_merits
    has_many :downtime_actions
    has_many :skill_specialties
    belongs_to :creature_type
end
