require "rails_helper"

RSpec.describe "projects index and show" do
  it "visits projects index" do
    project = Project.create(
      title: "Flashcards", 
      url: "https://github.com/jamisonordway/flashcards_python", 
      description: "Lightweight command-line study tool built in Python"
    )

    visit "/"

    expect(page).to have_link("Flashcards")
  end

  it "visits project show" do
    project = Project.create(
      title: "Flashcards", 
      url: "https://github.com/jamisonordway/flashcards_python", 
      description: "Lightweight command-line study tool built in Python"
    )

    visit "/"

    click_on "Flashcards"
    expect(current_path).to eq(project_path(project))
  end
end