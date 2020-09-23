require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address = addresses(:one)
    @contact = contacts(:one)
  end

  test "should get new" do
    get new_contact_address_url(@contact)
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post contact_addresses_url(@contact), params: { address: { street: '103 Green Street', town: 'town', zip: '12345', country: 'usa' } }
    end

    assert_redirected_to contact_url(@contact)
  end

  test "should get edit" do
    get edit_contact_address_url(@contact, @address)
    assert_response :success
  end

  test "should update address" do
    patch contact_address_url(@contact, @address), params: { address: { street: '105 Yellow Street', town: 'tune', zip: '54321', country: 'czechia'  } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete contact_address_url(@contact, @address)
    end

    assert_redirected_to contact_url(@contact)
  end
end
