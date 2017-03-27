#
# Rspec test for the controllers/comments_controller.rb
#
require "rails_helper"

RSpec.describe CommentsController, :type => :controller do

    #
    # Tests the index functionality of the MessagesController
    #
    context "simulation of index function for MessagesController" do
        it "spawns a new MessagesController and runs index()" do

            # Create a new messages controller object.
            mc = MessagesController.new

            # Expect that the MessagesController is not null.
            expect(mc.nil?).to eq(false)

            # Attempt to run index().
            mc.index
        end
    end

    #
    # Tests the show functionality of the MessagesController
    #
    context "simulation of show function for MessagesController" do
        it "spawns a new MessagesController and runs show()" do

            # Create a new messages controller object.
            mc = MessagesController.new

            # Expect that the MessagesController is not null.
            expect(mc.nil?).to eq(false)

            # Attempt to run show().
            mc.show
        end
    end

    #
    # Tests the new functionality of the MessagesController
    #
    context "simulation of new function for MessagesController" do
        it "spawns a new MessagesController and ensures it is not nil" do

            # Create a new messages controller object.
            mc = MessagesController.new

            # Expect that the MessagesController is not null.
            expect(mc.nil?).to eq(false)
        end
    end

    #
    # Tests the edit functionality of the MessagesController
    #
    context "simulation of edit function for MessagesController" do
        it "spawns a new MessagesController and runs edit()" do

            # Create a new messages controller object.
            mc = MessagesController.new

            # Expect that the CommentsController is not null.
            expect(mc.nil?).to eq(false)

            # If this test does not complain, then it works.
            mc.edit
        end
    end
end
