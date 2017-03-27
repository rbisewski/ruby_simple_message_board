#
# Rspec test for the controllers/messages_controller.rb
#
require "rails_helper"

RSpec.describe MessagesController, :type => :controller do

    #
    # Tests the edit functionality of the MessagesController
    #
    context "simulation of edit function for MessagesController" do
        it "spawns a new CommentsController and runs edit()" do

            # Create a new comments controller object.
            cc = CommentsController.new

            # Expect that the CommentsController is not null.
            expect(cc.nil?).to eq(false)

            # If this test does not complain, then it works.
            cc.edit
        end
    end
end
