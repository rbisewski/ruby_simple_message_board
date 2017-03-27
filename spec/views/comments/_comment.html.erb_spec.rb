#
# Rspec test for the views/comments/_comments.html.erb partial page
#
require "rails_helper"

RSpec.describe "comments/_comments" do

    #
    # Test case for when there are no action parameters.
    #
    it "accessing the comments/_comments partial page without action" do

        # The action should be nil.
        expect(controller.request.path_parameters[:action]).to be_nil
    end
end
