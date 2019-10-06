# frozen_string_literal: true

class Starship < ApplicationRecord
  has_many :characters

  validates :name, :model, presence: true
  # :crew, :passengers have NA
  validates :name, uniqueness: true
end
