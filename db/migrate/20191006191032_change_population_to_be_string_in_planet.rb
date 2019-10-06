# frozen_string_literal: true

class ChangePopulationToBeStringInPlanet < ActiveRecord::Migration[6.0]
  def change
    change_column :planets, :population, :string
    # https://tosbourn.com/rails-migrate-change-column-type/
  end
end
