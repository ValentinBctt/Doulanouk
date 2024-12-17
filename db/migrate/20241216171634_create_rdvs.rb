class CreateRdvs < ActiveRecord::Migration[7.1]
  def change
    create_table :rdvs do |t|
      t.references :prestation, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :postal_code
      t.string :city
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
