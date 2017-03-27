#
# Rspec test for the message.rb model
#
require "rails_helper"

RSpec.describe Message, :type => :model do

    #
    # Fake message test
    #
    context "simulation of creating a message with fake content" do
        it "creates a new message with fake data" do

            # Create a fake a fake user.
            fake_user = User.create!(:email => "fake@domain.com",
              :password => "123abc", :first_name => "Fake First Name",
              :last_name => "Fake Last Name")

            # Create some fake comments, dump them to an array.
            comment1 = Comment.create!(:user => fake_user, :content => "et")
            comment2 = Comment.create!(:user => fake_user, :content => "hoc")
            commentz = [comment1, comment2]

            # Expect that the "commentz" array has a length of 2.
            expect(commentz.size).to eq(2)

            # Create a fake message.
            fake_message = Message.create!(:title => "Lorem Ipsum",
              :description => "Lorem ipsum", :user => fake_user,
              :comments => commentz)

            # Assign the fake comments from earlier to the message.
            comment1.message = fake_message
            comment2.message = fake_message

            # Expect that the fake message has the intended title.
            expect(fake_message.title).to eq("Lorem Ipsum")

            # Expect that the fake message has the intended description.
            expect(fake_message.description).to eq("Lorem ipsum")

            # Expect that the fake message contains the fake comments.
            expect(fake_message.comments).to eq(commentz)
        end
    end
end
