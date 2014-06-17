require 'rails_helper'

feature "delete a character" do

  scenario "delete character" do

    show = TelevisionShow.create(title: 'Game of Thrones', network: 'HBO')

    a = Character.new(character_name: 'dogz', actor_name: 'barf')

    television_show = TelevisionShow.find(show.id)
    a.television_show = television_show
    a.save



    visit characters_path
    save_and_open_page

    click_on 'delete'

    page.should have_no_content('dogz')


  end
end
