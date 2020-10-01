require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email = emails(:one)
    @contact = contacts(:one)
  end

  test "should get index" do
    get contact_emails_url(@contact)
    assert_response :success
  end

  test "should get new" do
    get new_contact_email_url(@contact)
    assert_response :success
  end

  test "should create email" do
    assert_difference('Email.count') do
      post contact_emails_url(@contact), params: { email: { email_address: 'me@test.com' } }
    end

    assert_redirected_to contact_url(@contact)
  end

  test "should get edit" do
    get edit_contact_email_url(@contact, @email)
    assert_response :success
  end

  test "should update email" do
    patch contact_email_url(@contact, @email), params: { email: { email_address: 'you@test.com'  } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy email" do
    assert_difference('Email.count', -1) do
      delete contact_email_url(@contact, @email)
    end

    assert_redirected_to contact_url(@contact)
  end
end