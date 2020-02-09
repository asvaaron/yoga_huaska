class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :type_of
      t.text :address
      t.decimal :latitute, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
