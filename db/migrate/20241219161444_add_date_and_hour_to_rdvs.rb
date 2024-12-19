class AddDateAndHourToRdvs < ActiveRecord::Migration[7.1]
  def change
    add_column :rdvs, :date, :date
    add_column :rdvs, :hour, :time
  end
end
