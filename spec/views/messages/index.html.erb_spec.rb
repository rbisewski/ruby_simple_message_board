#
# Rspec test for the views/messages/index page
#
require "rails_helper"

RSpec.describe "messages/index" do

    #
    # Test case for when there are no messages on the message board.
    #
    it "renders messages/index page, when no messages are present" do

        # Create an empty array as this is the case where no messages
        # are currently present on the message board.
        @messages = []

        # Attempt to render the page in question.
        render

        #
        # The empty index page should contain a <div> element with the
        # following name --> "no_messages_are_currently_present_text"
        #
        expect(rendered).to match /no_messages_are_currently_present_text/
    end

    #
    # Test case for when there are 1+ messages on the message board.
    #
    it "renders messages/index page, when 1+ messages are present" do

        #
        # Create a fake message to be utilized for this test case.
        #
        # :id          --> message id
        # :title       --> message title
        # :description --> message body
        #
        fake_message = Message.new(:id => 1, :title => "Lorem Ipsum",
          :description => "Lorem ipsum message body")

        # Add the newly initialized message to the array.
        @messages = [fake_message]

        # Attempt to render the page in question.
        render

        #
        # The message board index page must contain only the message
        # title and *not* the message body text since that is only
        # displayed once the end-user has actually clicked the
        # "View Message" button.
        #
        expect(rendered).to match /Lorem Ipsum/
        expect(rendered).not_to match /Lorem ipsum message body/
    end
end
