#
# Rspec w/ Capybara test for the case when a user wants to sign up 
# to access the message board.
#
require "rails_helper"

RSpec.feature "Sign up new user to the message board", :type => :feature do

    scenario "User attempts to sign up using the form" do

        # Navigate the page to the %server%/messages/new URL.
        visit "users/sign_up"

        # Expect that the page will contain the following text, since
        # the form contains this as a title header:
        expect(page).to have_text("Sign up")

        # The form should have the following field labels:
        #
        # * Email
        # * First name
        # * Last name
        # * Description
        # * About me
        # * Password
        # * Password confirmation
        #
        expect(page).to have_text("Email")
        expect(page).to have_text("First name")
        expect(page).to have_text("Last name")
        expect(page).to have_text("Description")
        expect(page).to have_text("About me")
        expect(page).to have_text("Password")
        expect(page).to have_text("Password confirmation")

        # Attempt to fill the above fields with some fake values.
        fill_in "Email", :with => "fake@user.com"
        fill_in "First name", :with => "Fake"
        fill_in "Last name", :with => "User"
        fill_in "Description", :with => "Lorem ipsum..."
        fill_in "About me", :with => "Lorem ipsum?"
        fill_in "user_password", :with => "123badpassword"
        fill_in "user_password_confirmation", :with => "123badpassword"

        # Press the "Sign up" button.
        click_button "Sign up"

        # If all is well, the following text should appear.
        expect(page).to have_text("Welcome! You have signed up successfully.")
    end
end
