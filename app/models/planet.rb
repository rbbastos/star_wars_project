# frozen_string_literal: true

class Planet < ApplicationRecord
  has_many :characters
  has_many :inhabits

  validates :name, presence: true
  validates :name, uniqueness: true
  # :population NA
  validates :population, numericality: { only_integer: true }
end
