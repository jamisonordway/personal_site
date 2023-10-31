require "rails_helper"

RSpec.describe "Site login/logout" do
  it "logs in user" do
    user = User.create(email: "example@example.com", password: "123")
    visit "/login"

    fill_in :email, with: "example@example.com"
    fill_in :password, with: "123"
    click_on("Log In")

    expect(current_path).to eq(root_path)
    click_link("Blog Posts")

    expect(page).to have_content("New Post")
  end

  it "logs out user" do
    user = User.create(email: "example@example.com", password: "123")
    visit "/login"

    fill_in :email, with: "example@example.com"
    fill_in :password, with: "123"
    click_on("Log In")
    
    visit posts_path
    expect(page).to have_content("New Post")

    visit "/logout"

    expect(current_path).to eq(root_path)
    click_link("Blog Posts")
    expect(page).to_not have_content("New Post")
  end
end