# frozen_string_literal: true

class ChangeCrewToBeStringInStarship < ActiveRecord::Migration[6.0]
  def change
    change_column :starships, :crew, :string
  end
end
