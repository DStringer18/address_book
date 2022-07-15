require "application_system_test_case"

class PhoneNumbersTest < ApplicationSystemTestCase
  setup do
    @phone_number = phone_numbers(:one)
  end

  test "visiting the index" do
    visit phone_numbers_url
    assert_selector "h1", text: "Phone Numbers"
  end

  test "creating a Phone number" do
    visit phone_numbers_url
    click_on "New Phone Number"

    click_on "Create Phone number"

    assert_text "Phone number was successfully created"
    click_on "Back"
  end

  test "updating a Phone number" do
    visit phone_numbers_url
    click_on "Edit", match: :first

    click_on "Update Phone number"

    assert_text "Phone number was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone number" do
    visit phone_numbers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone number was successfully destroyed"
  end
end
