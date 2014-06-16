require 'rails_helper'

describe "Tweets" do
  let!(:user) { FactoryGirl.create(:user) }

  it "should be able to add new tweets" do
    # visit tweets list page

    # click on the New Tweet link

    # select @daretorant as the user

    # fill in the Body with "A testing tweet!"

    # click the button "Create Tweet"

    # the page should show "Tweet was successfully created."

    # click the "Back" link

    # the page should show "A testing tweet!"
  end  
end