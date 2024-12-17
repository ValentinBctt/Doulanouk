class CreateRdvs < ActiveRecord::Migration[7.1]
  def change
    create_table :rdvs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.text :message

      t.timestamps
    end
  end
end
