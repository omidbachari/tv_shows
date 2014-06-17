require 'rails_helper'

feature "adds a character" do
# Acceptance Criteria:
# * I can access a form to add a character on a TV show's page
# * I must specify the character's name and the actor's name
# * I can optionally provide a description
# * If I do not provide the required information, I receive an error message
# * If the character already exists in the database, I receive an error message

  scenario "visit adds character page" do

    show = TelevisionShow.create(title: 'Game of Thrones', network: 'HBO', years: 'July 2012-', synopsis: 'Best show evar!')

    visit television_show_path(show)
    save_and_open_page

    fill_in 'Character Name', with: "Don Cornelius"
    fill_in 'Actor Name', with: "Chris Rock"
    click_on 'Submit'

    expect(page).to have_content 'Game of Thrones'
    expect(page).to have_content 'HBO'
    expect(page).to have_content 'Don Cornelius'
    expect(page).to have_content 'Chris Rock'
    expect(page).to have_content 'Success'
    expect(page).to have_content 'July 2012-'
    expect(page).to have_content 'Best show evar!'

  end

  scenario "visit adds character page" do

    show = TelevisionShow.create(title: 'Game of Thrones', network: 'HBO')

    visit television_show_path(show)
    save_and_open_page

    click_on 'Submit'

    expect(page).to_not have_content 'Success'
    expect(page).to have_content "can't be blank"


  end
  scenario "visit adds character page" do

    show = TelevisionShow.create(title: 'Game of Thrones', network: 'HBO')

    visit television_show_path(show)
    save_and_open_page

    fill_in 'Character Name', with: "Don Cornelius"
    fill_in 'Actor Name', with: "Chris Rock"
    fill_in 'Description', with: "Crack"
    click_on 'Submit'

    expect(page).to have_content 'Game of Thrones'
    expect(page).to have_content 'HBO'
    expect(page).to have_content 'Don Cornelius'
    expect(page).to have_content 'Chris Rock'
    expect(page).to have_content 'Crack'

  end

end
