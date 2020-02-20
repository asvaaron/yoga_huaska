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
# Create User
User.create!([
                 {
                     email: "developer@developer.com",
                     password: "Developer123",
                     password_confirmation: "Developer123",
                     reset_password_token: nil,
                     reset_password_sent_at: nil,
                     remember_created_at: nil,
                     first_name: "Luis Carlos",
                     last_name: "Monge Artavia",
                     country: "CR",
                     date_of_birth: "2019-07-11 00:00:00"
                 }
             ])
# Create Appointments
Appointment.create!([
                        {
                            type_of: "Yoga",
                            address: "San Jose, CR",
                            start_time: DateTime.now + 1,
                            end_time: DateTime.now + 1 + (1.0/24)
                        },
                        {
                            type_of: "Karate",
                            address: "Heredia, CR",
                            start_time: DateTime.now + 5 ,
                            end_time: DateTime.now + 5 + (2.0/24)
                        },
                    ])


# Add Appointment 1 to User 1
User.first.appointments << Appointment.first
# Add Appointment 2 to User 1
User.first.appointments << Appointment.second

