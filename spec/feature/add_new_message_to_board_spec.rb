#
# Rspec w/ Capybara test for the case when a user wants to add a
# new message to the message board.
#
require "rails_helper"

RSpec.feature "Add new Message to message board", :type => :feature do

    scenario "User attempts to a new message, but is not signed in" do

        # Navigate the page to the %server%/messages/new URL.
        visit "messages/new"

        # Expect that the page will contain the following text, since
        # the end user is not signed in.
        expect(page).to have_text("You need to sign in or sign up " +
          "before continuing.")
    end
end
