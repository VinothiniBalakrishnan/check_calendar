require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  test "should not save appointment without title and description" do
    appointment = Appointment.new
    assert_not appointment.save
  end
end
