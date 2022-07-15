require 'test_helper'

class PhoneNumberTest < ActiveSupport::TestCase
  test "should not save without phone number" do
    phone = PhoneNumber.new
    phone.number = ""
    assert_not phone.save, "saved without a phone number"
  end
end
