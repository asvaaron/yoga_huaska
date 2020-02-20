class Appointment < ApplicationRecord
  has_and_belongs_to_many :users


  def start_time_from_format
    self.start_time.strftime('%Y-%m-%d %I:%M:%S')
  end

  def end_time_to_format
    self.end_time.strftime('%Y-%m-%d %I:%M:%S')
  end
end
