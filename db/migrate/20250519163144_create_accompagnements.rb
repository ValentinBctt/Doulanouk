class CreateAccompagnements < ActiveRecord::Migration[7.1]
  def change
    create_table :accompagnements do |t|
      t.string :titre
      t.text :description
      t.decimal :prix
      t.string :image_url

      t.timestamps
    end
  end
end
