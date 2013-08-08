require 'acceptance/acceptance_helper'

feature 'My first feature', %q{
  In order to ...
  As a ...
  I want ...
} do

  scenario 'first scenario' do
    true.should == true
  end

  scenario 'Home Links' do
		visit root_path
		page.should have_link "Sign In"
		page.should have_link "Home"
		page.should have_link "Login to Admin"
		page.should have_link "Spanish"
   end

end
