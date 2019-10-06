# frozen_string_literal: true

class ChangePassengerToBeStringInStarship < ActiveRecord::Migration[6.0]
  def change
    change_column :starships, :passengers, :string
  end
end
