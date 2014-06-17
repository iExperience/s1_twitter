require 'rails_helper'

describe "Tweets" do
  let!(:user) { FactoryGirl.create(:user) }

  it "should be able to add new tweets" do
    # visit tweets list page
    visit "/tweets"

    # click on the New Tweet link
    click_link "New Tweet"

    # select @daretorant as the user
    select user.handle, :from => "User"

    # fill in the Body with "A testing tweet!"
    fill_in "Body", :with => "A testing tweet!"

    # click the button "Create Tweet"
    click_button "Create Tweet"

    # the page should show "Tweet was successfully created."
    page.should have_content("Tweet was successfully created.")

    # click the "Back" link
    click_link "Back"

    # the page should show "A testing tweet!"
    page.should have_content("A testing tweet!")
  end  
end