require "rails_helper"

RSpec.describe "blog posting" do
  it "creates a new post" do
    user = User.create(email: "example@example.com", password: "123")
    visit "/login"

    fill_in :email, with: "example@example.com"
    fill_in :password, with: "123"
    click_on("Log In")

    visit "/blogs/new"

    save_and_open_page
    fill_in :post_title, with: "test"
    fill_in :post_content, with: "lorem ipsum stuff and things"
    click_on("Save")

    expect(current_path).to eq("/blogs")
  end
end