require "rails_helper"

RSpec.describe "Site navigation" do
  it "links to site pages" do
    visit root_path
    click_on("Portfolio")
    expect(current_path).to eq(projects_path)

    visit root_path
    click_on("Blog Posts")
    expect(current_path).to eq(posts_path)
  end

  it "displays About Me section on homepage" do
    visit root_path

    expect(page).to have_content("Jamison Ordway - Software Engineer")
  end
end