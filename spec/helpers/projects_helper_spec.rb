# require 'rails_helper'

# # Specs in this file have access to a helper object that includes
# # the ProjectsHelper. For example:
# #
# # describe ProjectsHelper do
# #   describe "string concat" do
# #     it "concats two strings with spaces" do
# #       expect(helper.concat_strings("this","that")).to eq("this that")
# #     end
# #   end
# # end
# RSpec.describe ProjectsHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

require "rails_helper"

RSpec.feature "Users can create new projects" do
	scenario "with valid attributes" do
		visit "/"
		click_link "New Project"
		fill_in "Name", with: "Sublime Text 3"
		fill_in "Description", with: "A text editor for everyone"
		click_button "Create Project"
	expect(page).to have_content "Project has been created."
	end
end