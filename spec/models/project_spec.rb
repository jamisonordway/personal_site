require "rails_helper"

RSpec.describe Project do
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:description)}
end