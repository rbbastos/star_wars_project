class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.references :planet, null: false, foreign_key: true
      t.references :starship, null: false, foreign_key: true
      t.references :specie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
