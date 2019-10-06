# frozen_string_literal: true

class Inhabit < ApplicationRecord
  belongs_to :planet
  belongs_to :specie
end
