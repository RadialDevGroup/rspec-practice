require 'rails_helper'

feature "Create Article" do
  scenario "I want to create an article" do
    visit articles_path

    click_on "New Article"

    fill_in "Title", with: 'My Frist Psot'
    fill_in "Body", with: 'This is the content of first post'

    expect do
      click_on 'Create Article'
    end.to change { Article.count }.by 1

    expect(page).to have_content "New article created"
  end
end
