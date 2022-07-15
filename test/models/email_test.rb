require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "should not save email without email address" do
    email = Email.new
    email.email_address = ""
    assert_not email.save, "saved the email without an email address"
  end
end
