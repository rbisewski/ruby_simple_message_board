#
# Rspec test for the comments.rb model
#
require "rails_helper"

RSpec.describe Comment, :type => :model do

    #
    # Comment creation test using fake information
    #
    context "simulation of creating a comment with fake data" do
        it "creates a new comment with fake message content and fake user" do

            # Create a fake a fake user.
            fake_user = User.create!(:email => "fake@domain.com",
              :password => "123abc", :first_name => "Fake First Name",
              :last_name => "Fake Last Name")

            # Create some fake comments, dump them to an array.
            comment1 = Comment.create!(:user => fake_user, :content => "lorem")
            comment2 = Comment.create!(:user => fake_user, :content => "ipsum")
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

            # Create the another comment, this time with a specific message
            # and user as per above.
            yet_another_comment = Comment.create!(:message => fake_message,
               :user => fake_user, :content => "rerum necessitatibus saepe")

            # Expect that the comment would be created properly;
            # i.e. (yet_another_comment == nil) is false
            expect(yet_another_comment.nil?).to eq(false)

            # Expect that the comment message is equivalent to the fake message.
            expect(yet_another_comment.message).to eq(fake_message)

            # Expect that the comment message is equivalent to the fake user.
            expect(yet_another_comment.user).to eq(fake_user)
        end
    end
end
