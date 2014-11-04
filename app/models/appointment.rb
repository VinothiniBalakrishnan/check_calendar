class Appointment < ActiveRecord::Base
  validates :title, presence: true
end
