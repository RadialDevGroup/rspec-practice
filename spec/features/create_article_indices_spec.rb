require 'rails_helper'

feature "Create Article Index", type: :feature do
  scenario "When we have an article, display it in a list" do
    article = Article.create title: 'Hello World', body: 'body content'

    visit articles_path

    expect(page).to have_content article.title

    click_on article.title

    expect(page).to have_content article.body

    expect(page).to have_content article.title

  end
end
