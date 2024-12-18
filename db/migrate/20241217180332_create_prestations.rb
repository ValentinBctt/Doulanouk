class CreatePrestations < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :rdvs, :prestations if foreign_key_exists?(:rdvs, :prestations)
    drop_table :prestations, if_exists: true

    create_table :prestations do |t|
      t.string :titre
      t.text :description
      t.string :prix
      t.string :image

      t.timestamps
    end
  end
end
