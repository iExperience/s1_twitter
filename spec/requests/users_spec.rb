require 'rails_helper'

describe "Users" do
  it "should be able to add new users" do
    # visit the Users list page
    visit "/users"

    # click the "New User" link
    click_link "New User"

    # fill in the Handle with "@daretorant"
    fill_in "Handle", :with => "@fizz_can"

    # click the "Create User" button
    click_button "Create User"

    # the page should show "User was successfully created."
    page.should have_content("User was successfully created.")
  end
end