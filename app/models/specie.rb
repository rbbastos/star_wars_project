# frozen_string_literal: true

class Specie < ApplicationRecord
  has_many :characters
  has_many :inhabits
  has_many :planets, through: :inhabits

  validates :name, presence: true
  # :language NA, not unique
  validates :name, uniqueness: true
end
