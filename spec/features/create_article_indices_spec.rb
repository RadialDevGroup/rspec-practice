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

feature "Update Articles", type: :feature do
  scenario "Allows an article to be updated" do
    article = Article.create title: 'Hello World', body: 'body content'

    visit articles_path

    expect(page).to have_content article.title

    click_on "edit", match: :first
  end
end

feature "Delete Articles", type: :feature do
  scenario "Allows an article to be deleted" do
    aritcle = Article.create title: 'Hello World', body: 'body content'

    visit articles_path

    click_on "delete"
  end
end
