class CreatePrestations < ActiveRecord::Migration[7.1]
  def change
    create_table :prestations do |t|
      t.string :titre
      t.text :description
      t.decimal :prix

      t.timestamps
    end
  end
end
