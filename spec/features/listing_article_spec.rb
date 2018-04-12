require "rails_helper"

RSpec.feature "Listing Article" do
  before do
    @article1 = Article.create(title: "The first Article", body: "First lorem ipsom dolor sit amet")
    @article2 = Article.create(title: "The second Article", body: "Second lorem ipsom dolor sit amet")
  end

  scenario "A user lists all articles" do
    visit "/"

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(page).to have_content(@article2.title)
    expect(page).to have_content(@article2.body)
    expect(page).to have_link(@article1.title)
    expect(page).to have_link(@article2.title)
  end
end
