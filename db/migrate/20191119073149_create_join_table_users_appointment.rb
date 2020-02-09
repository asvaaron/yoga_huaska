class CreateJoinTableUsersAppointment < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :appointments do |t|
      t.index [:user_id, :appointment_id]
      t.index [:appointment_id, :user_id]
    end
  end
end
