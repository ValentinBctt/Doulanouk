class CreateSoins < ActiveRecord::Migration[7.1]
  def change
    create_table :soins do |t|
      t.string :titre
      t.text :description
      t.string :prix
      t.string :image_url

      t.timestamps
    end
  end
end
