# Create User
User.create!([
                 {
                     email: "asvaaron@gmail.com",
                    password: "Developer123",
                    password_confirmation: "Developer123",
                    reset_password_token: nil,
                    reset_password_sent_at: nil,
                    remember_created_at: nil,
                    first_name: "Aaron",
                    last_name: "Sibaja",
                    country: "KH",
                    date_of_birth: "2019-07-11 00:00:00"
                 }
             ])
# Create Appointments
Appointment.create!([
                        {
                            type_of: "lala",
                            address: "ds",
                            start_time: DateTime.now + 1,
                            end_time: DateTime.now + 145
                        },
                        {
                            type_of: "dsd",
                            address: "dselas",
                            start_time: DateTime.now + 1 ,
                            end_time: DateTime.now + 180
                        },
                    ])


# Add Apointments 1 to User
User.first.appointments << Appointment.first