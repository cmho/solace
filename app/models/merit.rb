class Merit < ApplicationRecord
    has_many :characters, through :character_has_merit
    has_many :character_has_merits
end
