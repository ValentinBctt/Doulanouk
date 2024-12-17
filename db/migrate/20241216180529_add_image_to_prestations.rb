class AddImageToPrestations < ActiveRecord::Migration[7.1]
  def change
    add_column :prestations, :image, :string
  end
end
