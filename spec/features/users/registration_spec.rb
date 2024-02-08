require 'spec_helper'

RSpec.describe "admin user registration" do
  it "registers user" do
# When I visit '/'
# and I can click a link that says "Sign Up to Be a User"
# and I can enter registration details in a form
# and submit that form
# Then I should see a welcome message with my username
# and my user details have been saved in the database.
    visit new_user_path

    expect(page).to have_content "Sign up for an account"
    fill_in :user_email, with: "example@example.com"
    fill_in :user_password, with: "123"
    fill_in :user_password_confirmation, with: "123"
    click_on "Submit"

    expect(page).to have_content "Welcome, example@example.com"
  end
end