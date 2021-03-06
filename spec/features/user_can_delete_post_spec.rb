# frozen_string_literal: true




RSpec.describe "Timeline", type: :feature do
  scenario "User wants to delete a post" do
    sign_up
    create_post
    click_link 'delete_post'
    expect(page).not_to have_content('Hello, world!')
  end
end
