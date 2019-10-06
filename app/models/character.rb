class Character < ApplicationRecord
  belongs_to :planet
  belongs_to :starship
  belongs_to :specie
end
