class CreateStarships < ActiveRecord::Migration[6.0]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.integer :crew
      t.integer :passengers

      t.timestamps
    end
  end
end
