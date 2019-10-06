class CreateInhabits < ActiveRecord::Migration[6.0]
  def change
    create_table :inhabits do |t|
      t.references :planet, null: false, foreign_key: true
      t.references :specie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
