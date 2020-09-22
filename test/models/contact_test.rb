require 'test_helper'


class ContactTest < ActiveSupport::TestCase
  #test creation success
  test ""
   test "should not save contact without first name" do
    contact = Contact.new
    assert contact.valid?
   end

  #test failure when first name is absent

  #test failure when last name is absent
end

