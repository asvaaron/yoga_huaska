class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Add association for the join tables
  has_and_belongs_to_many :appointments


  # Return User's complete name
  def complete_name
    self.first_name+" "+self.last_name
  end

  # Return Users's complete country
  def country_name
    country_name = ISO3166::Country[self.country]
    country_name.translations[I18n.locale.to_s] || country_name.name
  end

  # Return Users's birthday format
  def birthday_format
    self.date_of_birth.strftime("%B %d, %Y")
  end

  # Find and remove an users's appointment using id
  def remove_appointment(id)
    appointment = Appointment.find(id)
    if self.appointments.exists?(appointment.id)
      self.appointments.delete(appointment)
    end
  end

  # Find and add an users's appointment using id
  def add_appointment(id)
    appointment = Appointment.find(id)
    unless self.appointments.exists?(appointment.id)
      self.appointments << appointment
    end
  end
end
