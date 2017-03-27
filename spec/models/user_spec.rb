#
# Rspec test for the user.rb model
#
require "rails_helper"

RSpec.describe User, :type => :model do

    #
    # User creation test using fake information
    #
    context "simulation of creating a user with fake data" do
        it "creates a new user with fake email and password" do

            # Create a fake a fake user.
            fake_user = User.create!(:email => "fake@domain.com",
              :password => "123abc", :first_name => "Fake First Name",
              :last_name => "Fake Last Name")

            # Expect that the user would be created properly.
            # i.e. (fake_user == nil) is false
            expect(fake_user.nil?).to eq(false)

            # Expect that the fake user's email is equivalent to the fake email.
            expect(fake_user.email).to eq("fake@domain.com")

            # Expect that the fake user's email is not something completely different.
            expect(/false@site.com/.match(fake_user.email)).to eq(nil)

            # Expect that the fake user's password is equivalent to the fake password.
            expect(fake_user.password).to eq("123abc")
        end
    end
end
