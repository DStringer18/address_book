require 'test_helper'


class ContactTest < ActiveSupport::TestCase

  test "should not save contact without first name" do
    contact = Contact.new
    contact.first_name = ""
    assert_not contact.save, "Saved the contact without a first name"
  end

  test "should not save contact without last name" do
    contact = Contact.new
    contact.last_name = ""
    assert_not contact.save, "Saved the contact without a first name"
  end
  
end

