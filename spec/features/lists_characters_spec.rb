require 'rails_helper'

feature "view index of characters" do
# As a site visitor
# I want to view a list of people's favorite TV characters
# So I can find wonky characters to watch

# Acceptance Criteria:
# * I can see a list of all the characters
# * The character's name and the TV show it is associated with are listed

  it "visit index page" do

    show = TelevisionShow.create(title: 'Game of Thrones', network: 'HBO')

    a = Character.new(character_name: 'dog', actor_name: 'barf')

    television_show = TelevisionShow.find(show.id)
    a.television_show = television_show
a.save


    visit '/characters'
    save_and_open_page

    expect(page).to have_content 'dog'

  end

end
