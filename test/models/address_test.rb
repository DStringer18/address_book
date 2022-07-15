require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  test "should not save address without street" do
    address = Address.new
    address.street = ""
    assert_not address.save, "saved the address without a street name"
  end
  
  test "should not save address without town" do
    address = Address.new
    address.town = ""
    assert_not address.save, "saved the address without a town name"
  end

  test "should not save address without zip code" do
    address = Address.new
    address.zip = ""
    assert_not address.save, "saved the address without a zip code"
  end

  test "should not save address without country" do
    address = Address.new
    address.country = ""
    assert_not address.save, "saved the address without a country name"
  end

end
