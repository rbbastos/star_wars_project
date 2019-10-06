# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :planet
  belongs_to :starship
  belongs_to :specie

  validates :name, presence: true
  validates :name, uniqueness: true
end
