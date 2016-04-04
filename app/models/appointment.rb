class Appointment < ActiveRecord::Base
  validates :start_time, :end_time, :overlap => true
  validates_date :start_time, :on => :create, :on_or_after => :today
end
