require 'test_helper'

class PhoneNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_number = phone_numbers(:one)
    @contact = contacts(:one)
  end

  test "should get new" do
    get new_contact_phone_number_url(@contact)
    assert_response :success
  end

  test "should create phone_number" do
    assert_difference('PhoneNumber.count') do
      post contact_phone_numbers_url(@contact), params: { phone_number: { number: "503-222-3456" } }
    end

    assert_redirected_to contact_url(@contact)
  end

  test "should get edit" do
    get edit_contact_phone_number_url(@contact, @phone_number)
    assert_response :success
  end

  test "should update phone_number" do
    patch contact_phone_number_url(@contact, @phone_number), params: { phone_number: { number: "500-000-3421" } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy phone_number" do
    assert_difference('PhoneNumber.count', -1) do
      delete contact_phone_number_url(@contact, @phone_number)
    end

    assert_redirected_to contact_url(@contact)
  end
end
