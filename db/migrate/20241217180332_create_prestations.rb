class CreatePrestations < ActiveRecord::Migration[7.1]
  def change

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
